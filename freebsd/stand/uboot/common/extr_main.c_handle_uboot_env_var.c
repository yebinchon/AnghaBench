
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldvar ;
typedef enum ubenv_action { ____Placeholder_ubenv_action } ubenv_action ;


 int MIN (int,int) ;
 int UBENV_IMPORT ;
 int UBENV_SHOW ;
 int printf (char*,...) ;
 int setenv (char*,char const*,int) ;
 int strcpy (char*,char*) ;
 int strcspn (char const*,char*) ;
 int strncat (char*,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 char* ub_env_get (char const*) ;

__attribute__((used)) static void
handle_uboot_env_var(enum ubenv_action action, const char * var)
{
 char ldvar[128];
 const char *val;
 char *wrk;
 int len;






 if (action == UBENV_IMPORT) {
  len = strcspn(var, "=");
  if (len == 0) {
   printf("name cannot start with '=': '%s'\n", var);
   return;
  }
  if (var[len] == 0) {
   strcpy(ldvar, "uboot.");
   strncat(ldvar, var, sizeof(ldvar) - 7);
  } else {
   len = MIN(len, sizeof(ldvar) - 1);
   strncpy(ldvar, var, len);
   ldvar[len] = 0;
   var = &var[len + 1];
  }
 }





 if (strncmp(var, "uboot.", 6) == 0) {
  var = &var[6];
 }


 if (var[0] == 0) {
  printf("empty variable name\n");
  return;
 }

 val = ub_env_get(var);
 if (action == UBENV_SHOW) {
  if (val == ((void*)0))
   printf("uboot.%s is not set\n", var);
  else
   printf("uboot.%s=%s\n", var, val);
 } else if (action == UBENV_IMPORT) {
  if (val != ((void*)0)) {
   setenv(ldvar, val, 1);
  }
 }
}
