
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {size_t width; size_t lastwidth; } ;



__attribute__((used)) static void
ps_setwidth(struct termp *p, int iop, int width)
{
 size_t lastwidth;

 lastwidth = p->ps->width;
 if (iop > 0)
  p->ps->width += width;
 else if (iop == 0)
  p->ps->width = width ? (size_t)width : p->ps->lastwidth;
 else if (p->ps->width > (size_t)width)
  p->ps->width -= width;
 else
  p->ps->width = 0;
 p->ps->lastwidth = lastwidth;
}
