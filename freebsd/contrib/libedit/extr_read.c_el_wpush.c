
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct macros {int level; int ** macro; } ;
struct TYPE_7__ {TYPE_1__* el_read; } ;
struct TYPE_6__ {struct macros macros; } ;
typedef TYPE_2__ EditLine ;


 int EL_MAXMACRO ;
 int terminal__flush (TYPE_2__*) ;
 int terminal_beep (TYPE_2__*) ;
 int * wcsdup (int const*) ;

void
el_wpush(EditLine *el, const wchar_t *str)
{
 struct macros *ma = &el->el_read->macros;

 if (str != ((void*)0) && ma->level + 1 < EL_MAXMACRO) {
  ma->level++;
  if ((ma->macro[ma->level] = wcsdup(str)) != ((void*)0))
   return;
  ma->level--;
 }
 terminal_beep(el);
 terminal__flush(el);
}
