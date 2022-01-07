
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ Elf_Sxword ;
typedef scalar_t__ Elf_Sword ;


 scalar_t__ __predict_true (int) ;
 int memcpy (scalar_t__*,void*,size_t) ;

__attribute__((used)) static __inline Elf_Sxword
load_ptr(void *where, size_t len)
{
 Elf_Sxword val;

 if (__predict_true(((uintptr_t)where & (len - 1)) == 0)) {




  return *(Elf_Sword *)where;
 }

 val = 0;

 (void)memcpy(&val, where, len);


 (void)memcpy((uint8_t *)((&val)+1) - len, where, len);

 return (len == sizeof(Elf_Sxword)) ? val : (Elf_Sword)val;
}
