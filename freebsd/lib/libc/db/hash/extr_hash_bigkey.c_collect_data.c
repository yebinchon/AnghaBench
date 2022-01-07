
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_10__ {char* page; int addr; } ;
struct TYPE_9__ {int BSIZE; char* tmp_buf; int cndx; TYPE_1__* cpage; int cbucket; } ;
struct TYPE_8__ {scalar_t__ page; } ;
typedef TYPE_2__ HTAB ;
typedef TYPE_3__ BUFHEAD ;


 int EINVAL ;
 int FULL_KEY_DATA ;
 void* __get_buf (TYPE_2__*,int,TYPE_3__*,int ) ;
 int errno ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static int
collect_data(HTAB *hashp, BUFHEAD *bufp, int len, int set)
{
 u_int16_t *bp;
 char *p;
 BUFHEAD *xbp;
 u_int16_t save_addr;
 int mylen, totlen;

 p = bufp->page;
 bp = (u_int16_t *)p;
 mylen = hashp->BSIZE - bp[1];
 save_addr = bufp->addr;

 if (bp[2] == FULL_KEY_DATA) {
  totlen = len + mylen;
  if (hashp->tmp_buf)
   free(hashp->tmp_buf);
  if ((hashp->tmp_buf = (char *)malloc(totlen)) == ((void*)0))
   return (-1);
  if (set) {
   hashp->cndx = 1;
   if (bp[0] == 2) {
    hashp->cpage = ((void*)0);
    hashp->cbucket++;
   } else {
    hashp->cpage =
        __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
    if (!hashp->cpage)
     return (-1);
    else if (!((u_int16_t *)hashp->cpage->page)[0]) {
     hashp->cbucket++;
     hashp->cpage = ((void*)0);
    }
   }
  }
 } else {
  xbp = __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
  if (!xbp || ((totlen =
      collect_data(hashp, xbp, len + mylen, set)) < 1))
   return (-1);
 }
 if (bufp->addr != save_addr) {
  errno = EINVAL;
  return (-1);
 }
 memmove(&hashp->tmp_buf[len], (bufp->page) + bp[1], mylen);
 return (totlen);
}
