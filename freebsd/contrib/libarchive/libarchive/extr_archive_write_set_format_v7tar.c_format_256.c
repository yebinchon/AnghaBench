
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int
format_256(int64_t v, char *p, int s)
{
 p += s;
 while (s-- > 0) {
  *--p = (char)(v & 0xff);
  v >>= 8;
 }
 *p |= 0x80;
 return (0);
}
