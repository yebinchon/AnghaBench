
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALLBACK (int ,int) ;
 int putc ;

__attribute__((used)) static void
userboot_cons_putchar(int c)
{

        CALLBACK(putc, c);
}
