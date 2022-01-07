
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ub_putc (int) ;

__attribute__((used)) static void
uboot_cons_putchar(int c)
{

 if (c == '\n')
  ub_putc('\r');

 ub_putc(c);
}
