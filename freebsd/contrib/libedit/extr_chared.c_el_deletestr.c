
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * buffer; int * cursor; } ;
struct TYPE_6__ {TYPE_1__ el_line; } ;
typedef TYPE_2__ EditLine ;


 int c_delbefore (TYPE_2__*,int) ;

void
el_deletestr(EditLine *el, int n)
{
 if (n <= 0)
  return;

 if (el->el_line.cursor < &el->el_line.buffer[n])
  return;

 c_delbefore(el, n);
 el->el_line.cursor -= n;
 if (el->el_line.cursor < el->el_line.buffer)
  el->el_line.cursor = el->el_line.buffer;
}
