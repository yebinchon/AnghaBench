
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* lookup_value (int ,int) ;
 int sigcode ;
 char const* sysdecode_sigbus_code (int) ;
 char const* sysdecode_sigchld_code (int) ;
 char const* sysdecode_sigfpe_code (int) ;
 char const* sysdecode_sigill_code (int) ;
 char const* sysdecode_sigsegv_code (int) ;
 char const* sysdecode_sigtrap_code (int) ;

const char *
sysdecode_sigcode(int sig, int si_code)
{
 const char *str;

 str = lookup_value(sigcode, si_code);
 if (str != ((void*)0))
  return (str);

 switch (sig) {
 case 130:
  return (sysdecode_sigill_code(si_code));
 case 133:
  return (sysdecode_sigbus_code(si_code));
 case 129:
  return (sysdecode_sigsegv_code(si_code));
 case 131:
  return (sysdecode_sigfpe_code(si_code));
 case 128:
  return (sysdecode_sigtrap_code(si_code));
 case 132:
  return (sysdecode_sigchld_code(si_code));
 default:
  return (((void*)0));
 }
}
