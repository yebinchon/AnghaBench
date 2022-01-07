
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
__timingsafe_bcmp(const void *b1, const void *b2, size_t n)
{
 const unsigned char *p1 = b1, *p2 = b2;
 int ret = 0;

 for (; n > 0; n--)
  ret |= *p1++ ^ *p2++;
 return (ret != 0);
}
