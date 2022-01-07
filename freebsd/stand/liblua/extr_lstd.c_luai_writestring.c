
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (int ) ;

void
luai_writestring(const char *s, int i)
{

 while (i-- > 0)
  putchar(*s++);
}
