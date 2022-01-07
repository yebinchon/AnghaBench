
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGBUS ;
 int SIGSEGV ;





__attribute__((used)) static int
linux_translate_traps(int signal, int trap_code)
{

 if (signal != SIGBUS)
  return (signal);
 switch (trap_code) {
 case 129:
 case 128:
 case 131:
 case 130:
  return (SIGSEGV);
 default:
  return (signal);
 }
}
