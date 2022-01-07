
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
struct macros {scalar_t__ level; char** macro; size_t offset; } ;
struct TYPE_8__ {TYPE_1__* el_read; } ;
struct TYPE_7__ {int (* read_char ) (TYPE_2__*,char*) ;int read_errno; struct macros macros; } ;
typedef TYPE_2__ EditLine ;


 int errno ;
 int read_pop (struct macros*) ;
 int stub1 (TYPE_2__*,char*) ;
 int terminal__flush (TYPE_2__*) ;
 scalar_t__ tty_rawmode (TYPE_2__*) ;

int
el_wgetc(EditLine *el, wchar_t *cp)
{
 struct macros *ma = &el->el_read->macros;
 int num_read;

 terminal__flush(el);
 for (;;) {
  if (ma->level < 0)
   break;

  if (ma->macro[0][ma->offset] == '\0') {
   read_pop(ma);
   continue;
  }

  *cp = ma->macro[0][ma->offset++];

  if (ma->macro[0][ma->offset] == '\0') {

   read_pop(ma);
  }

  return 1;
 }

 if (tty_rawmode(el) < 0)
  return 0;

 num_read = (*el->el_read->read_char)(el, cp);






 if (num_read < 0)
  el->el_read->read_errno = errno;

 return num_read;
}
