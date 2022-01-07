
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_CURRENT_LINK ;
 scalar_t__ MAXPATHLEN ;
 int auditd_log_err (char*) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int readlink (int ,char*,scalar_t__) ;

__attribute__((used)) static char *
get_curfile(void)
{
 char *cf;
 int len;

 cf = malloc(MAXPATHLEN);
 if (cf == ((void*)0)) {
  auditd_log_err("malloc failed: %m");
  return (((void*)0));
 }

 len = readlink(AUDIT_CURRENT_LINK, cf, MAXPATHLEN - 1);
 if (len < 0) {
  free(cf);
  return (((void*)0));
 }


 cf[len] = '\0';

 return (cf);
}
