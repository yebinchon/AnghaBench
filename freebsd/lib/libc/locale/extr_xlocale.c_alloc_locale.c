
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _xlocale {int dummy; } ;
typedef TYPE_2__* locale_t ;
struct TYPE_5__ {int destructor; } ;
struct TYPE_6__ {int monetary_locale_changed; int numeric_locale_changed; TYPE_1__ header; } ;


 TYPE_2__* calloc (int,int) ;
 int destruct_locale ;

__attribute__((used)) static locale_t
alloc_locale(void)
{
 locale_t new = calloc(sizeof(struct _xlocale), 1);

 new->header.destructor = destruct_locale;
 new->monetary_locale_changed = 1;
 new->numeric_locale_changed = 1;
 return (new);
}
