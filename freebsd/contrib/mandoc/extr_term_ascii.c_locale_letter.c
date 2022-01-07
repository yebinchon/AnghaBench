
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 int putwchar (int) ;

__attribute__((used)) static void
locale_letter(struct termp *p, int c)
{

 putwchar(c);
}
