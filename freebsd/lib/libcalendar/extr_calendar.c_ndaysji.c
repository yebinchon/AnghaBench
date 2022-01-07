
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; size_t m; int y; } ;
typedef TYPE_1__ date ;


 int* month1 ;

__attribute__((used)) static int
ndaysji(date * idt)
{

 return (idt->d + month1[idt->m] + idt->y * 365 + idt->y / 4);
}
