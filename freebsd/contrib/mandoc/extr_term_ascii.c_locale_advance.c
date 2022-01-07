
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int dummy; } ;


 size_t UINT16_MAX ;
 int assert (int) ;
 int putwchar (int) ;

__attribute__((used)) static void
locale_advance(struct termp *p, size_t len)
{
 size_t i;

 assert(len < UINT16_MAX);
 for (i = 0; i < len; i++)
  putwchar(L' ');
}
