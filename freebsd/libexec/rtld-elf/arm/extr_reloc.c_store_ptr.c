
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int Elf_Addr ;


 int memcpy (void*,int *,int) ;

__attribute__((used)) static __inline void
store_ptr(void *where, Elf_Addr val)
{

 memcpy(where, &val, sizeof(val));
}
