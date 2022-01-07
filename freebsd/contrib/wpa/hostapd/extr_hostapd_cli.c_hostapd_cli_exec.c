
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_exec (char const*,char*,int) ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,char const*,char const*) ;
 int os_strlen (char const*) ;

__attribute__((used)) static int hostapd_cli_exec(const char *program, const char *arg1,
       const char *arg2)
{
 char *arg;
 size_t len;
 int res;

 len = os_strlen(arg1) + os_strlen(arg2) + 2;
 arg = os_malloc(len);
 if (arg == ((void*)0))
  return -1;
 os_snprintf(arg, len, "%s %s", arg1, arg2);
 res = os_exec(program, arg, 1);
 os_free(arg);

 return res;
}
