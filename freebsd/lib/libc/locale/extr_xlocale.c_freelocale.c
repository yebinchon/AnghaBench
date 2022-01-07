
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * locale_t ;


 int * LC_GLOBAL_LOCALE ;
 int __xlocale_global_locale ;
 int xlocale_release (int *) ;

void
freelocale(locale_t loc)
{






 if (loc != ((void*)0) && loc != LC_GLOBAL_LOCALE &&
     loc != &__xlocale_global_locale)
  xlocale_release(loc);
}
