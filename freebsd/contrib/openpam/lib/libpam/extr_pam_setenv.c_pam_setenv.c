
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int EINVAL ;
 int ENTER () ;
 int FREE (char*) ;
 int PAM_BUF_ERR ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int) ;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int errno ;
 scalar_t__ openpam_findenv (int *,char const*,int ) ;
 int pam_putenv (int *,char*) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;

int
pam_setenv(pam_handle_t *pamh,
 const char *name,
 const char *value,
 int overwrite)
{
 char *env;
 int r;

 ENTER();


 if (*name == '\0' || strchr(name, '=') != ((void*)0)) {
  errno = EINVAL;
  RETURNC(PAM_SYSTEM_ERR);
 }


 if (!overwrite && openpam_findenv(pamh, name, strlen(name)) >= 0)
  RETURNC(PAM_SUCCESS);


 if (asprintf(&env, "%s=%s", name, value) < 0)
  RETURNC(PAM_BUF_ERR);
 r = pam_putenv(pamh, env);
 FREE(env);
 RETURNC(r);
}
