
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
do_hash(const unsigned char *name, int len, int size)
{
 const unsigned char *s = name;
 int accum = 0, i = len;

 while (i--) {

  accum += *s++;

  while (accum > 255)
   accum = (accum & 255) + (accum >> 8);
 }
 return (accum % size);
}
