
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int Elf_Addr ;


 scalar_t__ RELOC_ALIGNED_P (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static __inline void
store_ptr(Elf_Addr *where, Elf_Addr val)
{
 if (RELOC_ALIGNED_P(where))
  *where = val;
 else
  memcpy(where, &val, sizeof(val));
}
