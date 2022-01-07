
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct xlocale_collate {int __collate_load_error; } ;
struct TYPE_2__ {scalar_t__* components; } ;


 size_t XLC_COLLATE ;
 int __collate_range_cmp (int,int) ;
 TYPE_1__* __get_locale () ;
 int memset (char*,int,int) ;

__attribute__((used)) static const u_char *
__sccl(char *tab, const u_char *fmt)
{
 int c, n, v, i;
 struct xlocale_collate *table =
  (struct xlocale_collate*)__get_locale()->components[XLC_COLLATE];


 c = *fmt++;
 if (c == '^') {
  v = 1;
  c = *fmt++;
 } else
  v = 0;


 (void) memset(tab, v, 256);

 if (c == 0)
  return (fmt - 1);
 v = 1 - v;
 for (;;) {
  tab[c] = v;
doswitch:
  n = *fmt++;
  switch (n) {

  case 0:
   return (fmt - 1);

  case '-':
   n = *fmt;
   if (n == ']'
       || (table->__collate_load_error ? n < c :
    __collate_range_cmp(n, c) < 0
          )
      ) {
    c = '-';
    break;
   }
   fmt++;

   if (table->__collate_load_error) {
    do {
     tab[++c] = v;
    } while (c < n);
   } else {
    for (i = 0; i < 256; i ++)
     if (__collate_range_cmp(c, i) <= 0 &&
         __collate_range_cmp(i, n) <= 0
        )
      tab[i] = v;
   }

   c = n;





   goto doswitch;







   break;

  case ']':
   return (fmt);

  default:
   c = n;
   break;
  }
 }

}
