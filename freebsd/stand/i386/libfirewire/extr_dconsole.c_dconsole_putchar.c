
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dcons_putc (int *,int) ;
 int * sc ;

__attribute__((used)) static void
dconsole_putchar(int c)
{
    dcons_putc(&sc[0], c);
}
