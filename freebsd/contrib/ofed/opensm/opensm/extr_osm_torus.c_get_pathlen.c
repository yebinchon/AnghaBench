
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
void get_pathlen(unsigned src, unsigned dst, unsigned count,
   unsigned *vl0_len, unsigned *vl1_len)
{
 unsigned s, l;

 if (dst > src) {
  s = src;
  l = dst;
 } else {
  s = dst;
  l = src;
 }
 *vl0_len = l - s;
 *vl1_len = s + count - l;
}
