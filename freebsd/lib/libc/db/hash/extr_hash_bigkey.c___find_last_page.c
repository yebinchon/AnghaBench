
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_5__ {scalar_t__ page; } ;
typedef int HTAB ;
typedef TYPE_1__ BUFHEAD ;


 scalar_t__ FREESPACE (int*) ;
 int FULL_KEY_DATA ;
 int OVFLPAGE ;
 TYPE_1__* __get_buf (int *,int,TYPE_1__*,int ) ;

u_int16_t
__find_last_page(HTAB *hashp, BUFHEAD **bpp)
{
 BUFHEAD *bufp;
 u_int16_t *bp, pageno;
 int n;

 bufp = *bpp;
 bp = (u_int16_t *)bufp->page;
 for (;;) {
  n = bp[0];






  if (bp[2] == FULL_KEY_DATA &&
      ((n == 2) || (bp[n] == OVFLPAGE) || (FREESPACE(bp))))
   break;

  pageno = bp[n - 1];
  bufp = __get_buf(hashp, pageno, bufp, 0);
  if (!bufp)
   return (0);
  bp = (u_int16_t *)bufp->page;
 }

 *bpp = bufp;
 if (bp[0] > 2)
  return (bp[3]);
 else
  return (0);
}
