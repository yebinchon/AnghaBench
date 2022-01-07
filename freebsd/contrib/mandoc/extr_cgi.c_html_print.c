
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int html_putchar (int ) ;

__attribute__((used)) static void
html_print(const char *p)
{

 if (((void*)0) == p)
  return;
 while ('\0' != *p)
  html_putchar(*p++);
}
