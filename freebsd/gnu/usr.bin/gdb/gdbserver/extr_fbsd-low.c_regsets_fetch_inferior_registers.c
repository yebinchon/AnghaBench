
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset_info {scalar_t__ size; int (* store_function ) (void*) ;int get_request; } ;
typedef int PTRACE_ARG3_TYPE ;


 int inferior_pid ;
 void* malloc (scalar_t__) ;
 int perror (char*) ;
 int ptrace (int ,int,int ,int ) ;
 int sprintf (char*,char*,int) ;
 int stub1 (void*) ;
 struct regset_info* target_regsets ;

__attribute__((used)) static int
regsets_fetch_inferior_registers ()
{
  struct regset_info *regset;

  regset = target_regsets;

  while (regset->size >= 0)
    {
      void *buf;
      int res;

      if (regset->size == 0)
 {
   regset ++;
   continue;
 }

      buf = malloc (regset->size);
      res = ptrace (regset->get_request, inferior_pid, (PTRACE_ARG3_TYPE) buf, 0);
      if (res < 0)
 {
   char s[256];
   sprintf (s, "ptrace(regsets_fetch_inferior_registers) PID=%d",
     inferior_pid);
   perror (s);
 }
      regset->store_function (buf);
      regset ++;
    }
  return 0;
}
