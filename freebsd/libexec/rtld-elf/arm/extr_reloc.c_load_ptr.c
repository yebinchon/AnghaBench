
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef int Elf_Addr ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static __inline Elf_Addr
load_ptr(void *where)
{
 Elf_Addr res;

 memcpy(&res, where, sizeof(res));

 return (res);
}
