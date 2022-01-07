
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int Elf_Addr ;


 scalar_t__ RELOC_ALIGNED_P (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static __inline Elf_Addr
load_ptr(Elf_Addr *where)
{
 Elf_Addr res;

 if (RELOC_ALIGNED_P(where))
  return *where;
 memcpy(&res, where, sizeof(res));
 return (res);
}
