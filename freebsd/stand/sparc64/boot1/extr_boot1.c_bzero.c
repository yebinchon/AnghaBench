
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
bzero(void *b, size_t len)
{
 char *p = b;

 while (len-- != 0)
  *p++ = 0;
}
