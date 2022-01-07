
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTER () ;
 int FREE (char*) ;
 int PAM_PROMPT_ECHO_ON ;
 int PAM_SUCCESS ;
 int PAM_USER ;
 int PAM_USER_PROMPT ;
 int RETURNC (int) ;
 void* openpam_get_option (int *,char*) ;
 int openpam_subst (int *,char*,size_t*,char const*) ;
 int pam_get_item (int *,int ,void const**) ;
 int pam_prompt (int *,int ,char**,char*,char const*) ;
 int pam_set_item (int *,int ,char*) ;
 char* user_prompt ;

int
pam_get_user(pam_handle_t *pamh,
 const char **user,
 const char *prompt)
{
 char prompt_buf[1024];
 size_t prompt_size;
 const void *promptp;
 char *resp;
 int r;

 ENTER();
 r = pam_get_item(pamh, PAM_USER, (const void **)user);
 if (r == PAM_SUCCESS && *user != ((void*)0))
  RETURNC(PAM_SUCCESS);

 if ((promptp = openpam_get_option(pamh, "user_prompt")) != ((void*)0))
  prompt = promptp;

 if (prompt == ((void*)0)) {
  r = pam_get_item(pamh, PAM_USER_PROMPT, &promptp);
  if (r == PAM_SUCCESS && promptp != ((void*)0))
   prompt = promptp;
 }

 if (prompt == ((void*)0))
  prompt = user_prompt;

 prompt_size = sizeof prompt_buf;
 r = openpam_subst(pamh, prompt_buf, &prompt_size, prompt);
 if (r == PAM_SUCCESS && prompt_size <= sizeof prompt_buf)
  prompt = prompt_buf;
 r = pam_prompt(pamh, PAM_PROMPT_ECHO_ON, &resp, "%s", prompt);
 if (r != PAM_SUCCESS)
  RETURNC(r);
 r = pam_set_item(pamh, PAM_USER, resp);
 FREE(resp);
 if (r != PAM_SUCCESS)
  RETURNC(r);
 r = pam_get_item(pamh, PAM_USER, (const void **)user);
 RETURNC(r);
}
