
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void memzero(void *buf, size_t size)
{
 uint8_t *b = buf;
 uint8_t *e = b + size;

 while (b != e)
  *b++ = '\0';
}
