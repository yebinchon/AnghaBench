
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* locale_t ;
struct TYPE_6__ {TYPE_1__** components; } ;
struct TYPE_5__ {char const* locale; } ;


 int FIX_LOCALE (TYPE_2__*) ;
 int XLC_LAST ;
 int ffs (int) ;

const char *querylocale(int mask, locale_t loc)
{
 int type = ffs(mask) - 1;
 FIX_LOCALE(loc);
 if (type >= XLC_LAST)
  return (((void*)0));
 if (loc->components[type])
  return (loc->components[type]->locale);
 return ("C");
}
