
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * locale_t ;


 int FIX_LOCALE (int *) ;
 int XLC_LAST ;
 int _once (int *,int ) ;
 int * alloc_locale () ;
 int copyflags (int *,int *) ;
 int dupcomponent (int,int *,int *) ;
 int init_key ;
 int once_control ;

locale_t duplocale(locale_t base)
{
 locale_t new = alloc_locale();
 int type;

 _once(&once_control, init_key);

 if (((void*)0) == new) {
  return (((void*)0));
 }

 FIX_LOCALE(base);
 copyflags(new, base);

 for (type=0 ; type<XLC_LAST ; type++) {
  dupcomponent(type, base, new);
 }

 return (new);
}
