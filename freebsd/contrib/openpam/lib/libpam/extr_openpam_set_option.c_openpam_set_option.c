
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* current; } ;
typedef TYPE_1__ pam_handle_t ;
struct TYPE_5__ {int optc; char** optv; } ;
typedef TYPE_2__ pam_chain_t ;


 int ENTERS (char const*) ;
 int FREE (char*) ;
 int PAM_BUF_ERR ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int ) ;
 scalar_t__ asprintf (char**,char*,int,char const*,char const*) ;
 int free (char*) ;
 char** realloc (char**,int) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

int
openpam_set_option(pam_handle_t *pamh,
 const char *option,
 const char *value)
{
 pam_chain_t *cur;
 char *opt, **optv;
 size_t len;
 int i;

 ENTERS(option);
 if (pamh == ((void*)0) || pamh->current == ((void*)0) || option == ((void*)0))
  RETURNC(PAM_SYSTEM_ERR);
 cur = pamh->current;
 for (len = 0; option[len] != '\0'; ++len)
  if (option[len] == '=')
   break;
 for (i = 0; i < cur->optc; ++i) {
  if (strncmp(cur->optv[i], option, len) == 0 &&
      (cur->optv[i][len] == '\0' || cur->optv[i][len] == '='))
   break;
 }
 if (value == ((void*)0)) {

  if (i == cur->optc)
   RETURNC(PAM_SUCCESS);
  for (free(cur->optv[i]); i < cur->optc; ++i)
   cur->optv[i] = cur->optv[i + 1];
  cur->optv[i] = ((void*)0);
  RETURNC(PAM_SUCCESS);
 }
 if (asprintf(&opt, "%.*s=%s", (int)len, option, value) < 0)
  RETURNC(PAM_BUF_ERR);
 if (i == cur->optc) {

  optv = realloc(cur->optv, sizeof(char *) * (cur->optc + 2));
  if (optv == ((void*)0)) {
   FREE(opt);
   RETURNC(PAM_BUF_ERR);
  }
  optv[i] = opt;
  optv[i + 1] = ((void*)0);
  cur->optv = optv;
  ++cur->optc;
 } else {

  FREE(cur->optv[i]);
  cur->optv[i] = opt;
 }
 RETURNC(PAM_SUCCESS);
}
