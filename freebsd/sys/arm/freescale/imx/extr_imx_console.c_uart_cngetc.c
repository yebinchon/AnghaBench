
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int ub_getc () ;

__attribute__((used)) static int
uart_cngetc(struct consdev * cp)
{

 return ub_getc();
}
