
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned
ht_string_hash_(const char *s)
{
  unsigned h;
  const unsigned char *cp = (const unsigned char *)s;
  h = *cp << 7;
  while (*cp) {
    h = (1000003*h) ^ *cp++;
  }

  h ^= (unsigned)(cp-(const unsigned char*)s);
  return h;
}
