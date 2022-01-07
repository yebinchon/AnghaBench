
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlocale_collate {int __collate_load_error; } ;
struct TYPE_2__ {scalar_t__* components; } ;
typedef int Char ;


 int CHAR (int) ;
 int EOS ;

 int M_END ;
 int M_MASK ;
 int M_NOT ;

 int M_RNG ;

 size_t XLC_COLLATE ;
 TYPE_1__* __get_locale () ;
 int __wcollate_range_cmp (int ,int ) ;

__attribute__((used)) static int
match(Char *name, Char *pat, Char *patend)
{
 int ok, negate_range;
 Char c, k, *nextp, *nextn;
 struct xlocale_collate *table =
  (struct xlocale_collate*)__get_locale()->components[XLC_COLLATE];

 nextn = ((void*)0);
 nextp = ((void*)0);

 while (1) {
  while (pat < patend) {
   c = *pat++;
   switch (c & M_MASK) {
   case 130:
    if (pat == patend)
     return (1);
    if (*name == EOS)
     return (0);
    nextn = name + 1;
    nextp = pat - 1;
    break;
   case 129:
    if (*name++ == EOS)
     goto fail;
    break;
   case 128:
    ok = 0;
    if ((k = *name++) == EOS)
     goto fail;
    negate_range = ((*pat & M_MASK) == M_NOT);
    if (negate_range != 0)
     ++pat;
    while (((c = *pat++) & M_MASK) != M_END)
     if ((*pat & M_MASK) == M_RNG) {
      if (table->__collate_load_error ?
          CHAR(c) <= CHAR(k) &&
          CHAR(k) <= CHAR(pat[1]) :
          __wcollate_range_cmp(CHAR(c),
          CHAR(k)) <= 0 &&
          __wcollate_range_cmp(CHAR(k),
          CHAR(pat[1])) <= 0)
       ok = 1;
      pat += 2;
     } else if (c == k)
      ok = 1;
    if (ok == negate_range)
     goto fail;
    break;
   default:
    if (*name++ != c)
     goto fail;
    break;
   }
  }
  if (*name == EOS)
   return (1);

 fail:
  if (nextn == ((void*)0))
   break;
  pat = nextp;
  name = nextn;
 }
 return (0);
}
