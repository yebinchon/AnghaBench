
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
zap_memset(void *a, int c, size_t n)
{
 char *cp = a;
 char *cpend = cp + n;

 while (cp < cpend)
  *cp++ = c;
}
