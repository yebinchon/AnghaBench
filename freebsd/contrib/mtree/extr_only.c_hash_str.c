
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
hash_str(const char *str)
{
 const uint8_t *s = (const uint8_t *)str;
 uint8_t c;
 uint32_t hash = 0;
 while ((c = *s++) != '\0')
  hash = hash * 33 + c;
 return hash + (hash >> 5);
}
