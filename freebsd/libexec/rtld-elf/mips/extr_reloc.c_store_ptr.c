
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const Elf_Sxword ;
typedef int Elf_Sword ;


 scalar_t__ __predict_true (int) ;
 int memcpy (void*,int const*,size_t) ;

__attribute__((used)) static __inline void
store_ptr(void *where, Elf_Sxword val, size_t len)
{
 if (__predict_true(((uintptr_t)where & (len - 1)) == 0)) {






  *(Elf_Sword *)where = val;
  return;
 }

 (void)memcpy(where, &val, len);


 (void)memcpy(where, (const uint8_t *)((&val)+1) - len, len);

}
