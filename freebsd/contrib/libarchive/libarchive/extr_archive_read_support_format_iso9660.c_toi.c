
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
toi(const void *p, int n)
{
 const unsigned char *v = (const unsigned char *)p;
 if (n > 1)
  return v[0] + 256 * toi(v + 1, n - 1);
 if (n == 1)
  return v[0];
 return (0);
}
