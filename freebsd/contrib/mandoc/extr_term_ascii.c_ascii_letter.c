
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 int putchar (int) ;

__attribute__((used)) static void
ascii_letter(struct termp *p, int c)
{

 putchar(c);
}
