
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursor; scalar_t__ buffer; scalar_t__ lastchar; } ;
struct TYPE_5__ {TYPE_1__ el_line; } ;
typedef TYPE_2__ EditLine ;



int
el_cursor(EditLine *el, int n)
{
 if (n == 0)
  goto out;

 el->el_line.cursor += n;

 if (el->el_line.cursor < el->el_line.buffer)
  el->el_line.cursor = el->el_line.buffer;
 if (el->el_line.cursor > el->el_line.lastchar)
  el->el_line.cursor = el->el_line.lastchar;
out:
 return (int)(el->el_line.cursor - el->el_line.buffer);
}
