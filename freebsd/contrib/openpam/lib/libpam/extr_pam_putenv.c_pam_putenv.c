
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** env; size_t env_count; size_t env_size; } ;
typedef TYPE_1__ pam_handle_t ;


 int EINVAL ;
 int ENTER () ;
 int FREE (char*) ;
 int PAM_BUF_ERR ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int ) ;
 int errno ;
 int openpam_findenv (TYPE_1__*,char const*,int) ;
 char** realloc (char**,int) ;
 char* strchr (char const*,char) ;
 void* strdup (char const*) ;

int
pam_putenv(pam_handle_t *pamh,
 const char *namevalue)
{
 char **env, *p;
 size_t env_size;
 int i;

 ENTER();


 if ((p = strchr(namevalue, '=')) == ((void*)0)) {
  errno = EINVAL;
  RETURNC(PAM_SYSTEM_ERR);
 }


 if ((i = openpam_findenv(pamh, namevalue, p - namevalue)) >= 0) {
  if ((p = strdup(namevalue)) == ((void*)0))
   RETURNC(PAM_BUF_ERR);
  FREE(pamh->env[i]);
  pamh->env[i] = p;
  RETURNC(PAM_SUCCESS);
 }


 if (pamh->env_count == pamh->env_size) {
  env_size = pamh->env_size * 2 + 1;
  env = realloc(pamh->env, sizeof(char *) * env_size);
  if (env == ((void*)0))
   RETURNC(PAM_BUF_ERR);
  pamh->env = env;
  pamh->env_size = env_size;
 }


 if ((pamh->env[pamh->env_count] = strdup(namevalue)) == ((void*)0))
  RETURNC(PAM_BUF_ERR);
 ++pamh->env_count;
 RETURNC(PAM_SUCCESS);
}
