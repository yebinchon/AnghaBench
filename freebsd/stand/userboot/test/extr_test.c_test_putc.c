
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,int) ;

void
test_putc(void *arg, int ch)
{
 char c = ch;

 write(1, &c, 1);
}
