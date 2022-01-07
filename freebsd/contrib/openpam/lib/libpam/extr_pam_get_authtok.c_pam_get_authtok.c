
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int FREE (char*) ;

 int PAM_AUTHTOK_PROMPT ;
 int PAM_AUTH_ERR ;
 int PAM_BAD_CONSTANT ;
 int PAM_HOST ;
 int PAM_MAX_RESP_SIZE ;

 int PAM_OLDAUTHTOK_PROMPT ;
 int PAM_PROMPT_ECHO_OFF ;
 int PAM_PROMPT_ECHO_ON ;
 int PAM_RHOST ;
 int PAM_SUCCESS ;
 int PAM_TRY_AGAIN ;
 int RETURNC (int) ;
 char* authtok_prompt ;
 char* authtok_prompt_remote ;
 char* newauthtok_prompt ;
 char* oldauthtok_prompt ;
 void* openpam_get_option (int *,char const*) ;
 int openpam_subst (int *,char*,size_t*,char const*) ;
 int pam_get_item (int *,int,void const**) ;
 int pam_prompt (int *,int,char**,char*,char const*) ;
 int pam_set_item (int *,int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlset (char*,int ,int ) ;

int
pam_get_authtok(pam_handle_t *pamh,
 int item,
 const char **authtok,
 const char *prompt)
{
 char prompt_buf[1024];
 size_t prompt_size;
 const void *oldauthtok, *prevauthtok, *promptp;
 const char *prompt_option, *default_prompt;
 const void *lhost, *rhost;
 char *resp, *resp2;
 int pitem, r, style, twice;

 ENTER();
 *authtok = ((void*)0);
 twice = 0;
 switch (item) {
 case 129:
  pitem = PAM_AUTHTOK_PROMPT;
  prompt_option = "authtok_prompt";
  default_prompt = authtok_prompt;
  r = pam_get_item(pamh, PAM_RHOST, &rhost);
  if (r == PAM_SUCCESS && rhost != ((void*)0)) {
   r = pam_get_item(pamh, PAM_HOST, &lhost);
   if (r == PAM_SUCCESS && lhost != ((void*)0)) {
    if (strcmp(rhost, lhost) != 0)
     default_prompt = authtok_prompt_remote;
   }
  }
  r = pam_get_item(pamh, 128, &oldauthtok);
  if (r == PAM_SUCCESS && oldauthtok != ((void*)0)) {
   default_prompt = newauthtok_prompt;
   twice = 1;
  }
  break;
 case 128:
  pitem = PAM_OLDAUTHTOK_PROMPT;
  prompt_option = "oldauthtok_prompt";
  default_prompt = oldauthtok_prompt;
  twice = 0;
  break;
 default:
  RETURNC(PAM_BAD_CONSTANT);
 }
 if (openpam_get_option(pamh, "try_first_pass") ||
     openpam_get_option(pamh, "use_first_pass")) {
  r = pam_get_item(pamh, item, &prevauthtok);
  if (r == PAM_SUCCESS && prevauthtok != ((void*)0)) {
   *authtok = prevauthtok;
   RETURNC(PAM_SUCCESS);
  } else if (openpam_get_option(pamh, "use_first_pass")) {
   RETURNC(r == PAM_SUCCESS ? PAM_AUTH_ERR : r);
  }
 }

 if ((promptp = openpam_get_option(pamh, prompt_option)) != ((void*)0))
  prompt = promptp;

 if (prompt == ((void*)0)) {
  r = pam_get_item(pamh, pitem, &promptp);
  if (r == PAM_SUCCESS && promptp != ((void*)0))
   prompt = promptp;
 }

 if (prompt == ((void*)0))
  prompt = default_prompt;

 prompt_size = sizeof prompt_buf;
 r = openpam_subst(pamh, prompt_buf, &prompt_size, prompt);
 if (r == PAM_SUCCESS && prompt_size <= sizeof prompt_buf)
  prompt = prompt_buf;
 style = openpam_get_option(pamh, "echo_pass") ?
     PAM_PROMPT_ECHO_ON : PAM_PROMPT_ECHO_OFF;
 r = pam_prompt(pamh, style, &resp, "%s", prompt);
 if (r != PAM_SUCCESS)
  RETURNC(r);
 if (twice) {
  r = pam_prompt(pamh, style, &resp2, "Retype %s", prompt);
  if (r != PAM_SUCCESS) {
   strlset(resp, 0, PAM_MAX_RESP_SIZE);
   FREE(resp);
   RETURNC(r);
  }
  if (strcmp(resp, resp2) != 0) {
   strlset(resp, 0, PAM_MAX_RESP_SIZE);
   FREE(resp);
  }
  strlset(resp2, 0, PAM_MAX_RESP_SIZE);
  FREE(resp2);
 }
 if (resp == ((void*)0))
  RETURNC(PAM_TRY_AGAIN);
 r = pam_set_item(pamh, item, resp);
 strlset(resp, 0, PAM_MAX_RESP_SIZE);
 FREE(resp);
 if (r != PAM_SUCCESS)
  RETURNC(r);
 r = pam_get_item(pamh, item, (const void **)authtok);
 RETURNC(r);
}
