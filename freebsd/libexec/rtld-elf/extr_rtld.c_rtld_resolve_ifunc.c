
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;
typedef int Elf_Sym ;
typedef scalar_t__ Elf_Addr ;


 scalar_t__ call_ifunc_resolver (void*) ;
 scalar_t__ make_function_pointer (int const*,int const*) ;

void *
rtld_resolve_ifunc(const Obj_Entry *obj, const Elf_Sym *def)
{
 void *ptr;
 Elf_Addr target;

 ptr = (void *)make_function_pointer(def, obj);
 target = call_ifunc_resolver(ptr);
 return ((void *)target);
}
