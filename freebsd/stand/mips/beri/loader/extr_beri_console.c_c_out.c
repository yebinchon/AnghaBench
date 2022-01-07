
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beri_putc (int) ;

__attribute__((used)) static void
c_out(int c)
{

 beri_putc(c);
}
