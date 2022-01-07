
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_9__ {int v; } ;
struct TYPE_10__ {TYPE_3__ t_size; } ;
struct TYPE_7__ {int v; scalar_t__ h; } ;
struct TYPE_8__ {TYPE_1__ r_cursor; } ;
struct TYPE_11__ {char** el_vdisplay; TYPE_4__ el_terminal; TYPE_2__ el_refresh; } ;
typedef TYPE_5__ EditLine ;


 int ELRE_ASSERT (int,int ,int ) ;
 int __F ;
 int abort () ;

__attribute__((used)) static void
re_nextline(EditLine *el)
{
 el->el_refresh.r_cursor.h = 0;







 if (el->el_refresh.r_cursor.v + 1 >= el->el_terminal.t_size.v) {
  int i, lins = el->el_terminal.t_size.v;
  wchar_t *firstline = el->el_vdisplay[0];

  for(i = 1; i < lins; i++)
   el->el_vdisplay[i - 1] = el->el_vdisplay[i];

  firstline[0] = '\0';
  el->el_vdisplay[i - 1] = firstline;
 } else
  el->el_refresh.r_cursor.v++;

 ELRE_ASSERT(el->el_refresh.r_cursor.v >= el->el_terminal.t_size.v,
     (__F, "\r\nre_putc: overflow! r_cursor.v == %d > %d\r\n",
     el->el_refresh.r_cursor.v, el->el_terminal.t_size.v),
     abort());
}
