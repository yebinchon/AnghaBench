
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
gnu_hash(const char *s)
{
 uint32_t h;
 unsigned char c;

 h = 5381;
 for (c = *s; c != '\0'; c = *++s)
  h = h * 33 + c;
 return (h & 0xffffffff);
}
