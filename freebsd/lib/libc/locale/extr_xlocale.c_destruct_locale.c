
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* locale_t ;
struct TYPE_2__ {void* csym; scalar_t__* components; } ;


 int XLC_LAST ;
 int free (void*) ;
 int xlocale_release (scalar_t__) ;

__attribute__((used)) static void
destruct_locale(void *l)
{
 locale_t loc = l;

 for (int type=0 ; type<XLC_LAST ; type++) {
  if (loc->components[type]) {
   xlocale_release(loc->components[type]);
  }
 }
 if (loc->csym) {
  free(loc->csym);
 }
 free(l);
}
