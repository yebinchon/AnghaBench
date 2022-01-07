
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_int16_t ;
typedef int u_char ;
struct TYPE_15__ {int addr; scalar_t__ page; } ;
struct TYPE_14__ {int size; int * data; } ;
struct TYPE_13__ {int cndx; scalar_t__ tmp_buf; TYPE_1__* cpage; int cbucket; } ;
struct TYPE_12__ {scalar_t__ page; } ;
typedef TYPE_2__ HTAB ;
typedef TYPE_3__ DBT ;
typedef TYPE_4__ BUFHEAD ;


 int EINVAL ;
 int FREESPACE (int*) ;
 int FULL_KEY ;
 int PARTIAL_KEY ;
 void* __get_buf (TYPE_2__*,int,TYPE_4__*,int ) ;
 scalar_t__ collect_data (TYPE_2__*,TYPE_4__*,int,int) ;
 int errno ;
 int memmove (scalar_t__,scalar_t__,int) ;

int
__big_return(HTAB *hashp, BUFHEAD *bufp, int ndx, DBT *val, int set_current)
{
 BUFHEAD *save_p;
 u_int16_t *bp, len, off, save_addr;
 char *tp;

 bp = (u_int16_t *)bufp->page;
 while (bp[ndx + 1] == PARTIAL_KEY) {
  bufp = __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
  if (!bufp)
   return (-1);
  bp = (u_int16_t *)bufp->page;
  ndx = 1;
 }

 if (bp[ndx + 1] == FULL_KEY) {
  bufp = __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
  if (!bufp)
   return (-1);
  bp = (u_int16_t *)bufp->page;
  save_p = bufp;
  save_addr = save_p->addr;
  off = bp[1];
  len = 0;
 } else
  if (!FREESPACE(bp)) {







   off = bp[bp[0]];
   len = bp[1] - off;
   save_p = bufp;
   save_addr = bufp->addr;
   bufp = __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
   if (!bufp)
    return (-1);
   bp = (u_int16_t *)bufp->page;
  } else {

   tp = (char *)bp;
   off = bp[bp[0]];
   val->data = (u_char *)tp + off;
   val->size = bp[1] - off;
   if (set_current) {
    if (bp[0] == 2) {

     hashp->cpage = ((void*)0);
     hashp->cbucket++;
     hashp->cndx = 1;
    } else {
     hashp->cpage = __get_buf(hashp,
         bp[bp[0] - 1], bufp, 0);
     if (!hashp->cpage)
      return (-1);
     hashp->cndx = 1;
     if (!((u_int16_t *)
         hashp->cpage->page)[0]) {
      hashp->cbucket++;
      hashp->cpage = ((void*)0);
     }
    }
   }
   return (0);
  }

 val->size = (size_t)collect_data(hashp, bufp, (int)len, set_current);
 if (val->size == (size_t)-1)
  return (-1);
 if (save_p->addr != save_addr) {

  errno = EINVAL;
  return (-1);
 }
 memmove(hashp->tmp_buf, (save_p->page) + off, len);
 val->data = (u_char *)hashp->tmp_buf;
 return (0);
}
