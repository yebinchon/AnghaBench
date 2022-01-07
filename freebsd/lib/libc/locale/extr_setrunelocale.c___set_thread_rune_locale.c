
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * locale_t ;
struct TYPE_2__ {int * runes; } ;


 int * LC_GLOBAL_LOCALE ;
 TYPE_1__* XLOCALE_CTYPE (int *) ;
 int _DefaultRuneLocale ;
 int * _ThreadRuneLocale ;

void
__set_thread_rune_locale(locale_t loc)
{

 if (loc == ((void*)0)) {
  _ThreadRuneLocale = &_DefaultRuneLocale;
 } else if (loc == LC_GLOBAL_LOCALE) {
  _ThreadRuneLocale = 0;
 } else {
  _ThreadRuneLocale = XLOCALE_CTYPE(loc)->runes;
 }
}
