
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_ctype {struct xlocale_ctype* runes; } ;


 struct xlocale_ctype _DefaultRuneLocale ;
 int free (struct xlocale_ctype*) ;

__attribute__((used)) static void
destruct_ctype(void *v)
{
 struct xlocale_ctype *l = v;

 if (&_DefaultRuneLocale != l->runes)
  free(l->runes);
 free(l);
}
