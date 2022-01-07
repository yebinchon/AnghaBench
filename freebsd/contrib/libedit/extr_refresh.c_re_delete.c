
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_3__ {int el_scratch; } ;
typedef TYPE_1__ EditLine ;


 int ELRE_DEBUG (int,int ) ;
 int __F ;
 int ct_encode_string (char*,int *) ;

__attribute__((used)) static void

re_delete(EditLine *el __attribute__((__unused__)),
    wchar_t *d, int dat, int dlen, int num)
{
 wchar_t *a, *b;

 if (num <= 0)
  return;
 if (dat + num >= dlen) {
  d[dat] = '\0';
  return;
 }
 ELRE_DEBUG(1,
     (__F, "re_delete() starting: %d at %d max %d, d == \"%s\"\n",
     num, dat, dlen, ct_encode_string(d, &el->el_scratch)));


 if (num > 0) {
  b = d + dat;
  a = b + num;
  while (a < &d[dlen])
   *b++ = *a++;
  d[dlen] = '\0';
 }
 ELRE_DEBUG(1,
     (__F, "re_delete() after delete: %d at %d max %d, d == \"%s\"\n",
     num, dat, dlen, ct_encode_string(d, &el->el_scratch)));
}
