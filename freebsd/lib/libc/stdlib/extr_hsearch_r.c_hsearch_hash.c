
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int CHAR_BIT ;
 size_t UINT32_C (int) ;
 size_t UINT64_C (int) ;

__attribute__((used)) static size_t
hsearch_hash(size_t offset_basis, const char *str)
{
 size_t hash;

 hash = offset_basis;
 while (*str != '\0') {
  hash ^= (uint8_t)*str++;
  if (sizeof(size_t) * CHAR_BIT <= 32)
   hash *= UINT32_C(16777619);
  else
   hash *= UINT64_C(1099511628211);
 }
 return (hash);
}
