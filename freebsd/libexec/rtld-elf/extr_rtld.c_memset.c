
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *
memset(void *dest, int c, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++)
  ((char *)dest)[i] = c;
 return (dest);
}
