
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 long INT_MAX ;
 long INT_MIN ;
 int PAM_LOG_ERROR ;
 long PAM_NUM_ERRORS ;
 int PAM_SYSTEM_ERR ;
 char* openpam_get_option (int *,char*) ;
 int openpam_log (int ,char*,...) ;
 int * pam_err_name ;
 scalar_t__ strcmp (char const*,int ) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int
pam_return(pam_handle_t *pamh, int flags,
 int argc, const char *argv[])
{
 const char *errname;
 char *e;
 long errcode;

 (void)flags;
 (void)argc;
 (void)argv;
 if ((errname = openpam_get_option(pamh, "error")) == ((void*)0) ||
     errname[0] == '\0') {
  openpam_log(PAM_LOG_ERROR, "missing error parameter");
  return (PAM_SYSTEM_ERR);
 }

 errcode = strtol(errname, &e, 10);
 if (e != ((void*)0) && *e == '\0') {

  if (errcode >= INT_MIN && errcode <= INT_MAX)
   return (errcode);
 } else {

  for (errcode = 0; errcode < PAM_NUM_ERRORS; ++errcode)
   if (strcmp(errname, pam_err_name[errcode]) == 0)
    return (errcode);
 }
 openpam_log(PAM_LOG_ERROR, "invalid error code '%s'", errname);
 return (PAM_SYSTEM_ERR);
}
