
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset_info {scalar_t__ size; int set_request; int (* fill_function ) (void*) ;} ;
typedef int PTRACE_ARG3_TYPE ;


 int free (void*) ;
 int inferior_pid ;
 void* malloc (scalar_t__) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,int ) ;
 int stub1 (void*) ;
 struct regset_info* target_regsets ;

__attribute__((used)) static int
regsets_store_inferior_registers ()
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
      regset->fill_function (buf);
      res = ptrace (regset->set_request, inferior_pid, (PTRACE_ARG3_TYPE) buf, 0);
      if (res < 0)
 {
   perror ("Warning: ptrace(regsets_store_inferior_registers)");
 }
      regset ++;
      free (buf);
    }
  return 0;
}
