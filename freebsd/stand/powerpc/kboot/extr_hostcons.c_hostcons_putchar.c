
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int host_write (int,int*,int) ;

__attribute__((used)) static void
hostcons_putchar(int c)
{
 uint8_t ch = c;

 host_write(1, &ch, 1);
}
