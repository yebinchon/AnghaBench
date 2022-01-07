
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * itoa64 ;

__attribute__((used)) static void
to64(char *s, long v, int n)
{
 while (--n >= 0) {
  *s++ = itoa64[v&0x3f];
  v >>= 6;
 }
}
