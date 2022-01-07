
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct TYPE_8__ {char* page; int flags; } ;
struct TYPE_7__ {scalar_t__ BSIZE; int cndx; int NKEYS; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ BUFHEAD ;


 int BUF_MOD ;
 scalar_t__ OFFSET (scalar_t__*) ;
 scalar_t__ OVFLPAGE ;
 scalar_t__ REAL_KEY ;
 int __big_delete (TYPE_1__*,TYPE_2__*) ;
 int memmove (char*,char*,scalar_t__) ;

int
__delpair(HTAB *hashp, BUFHEAD *bufp, int ndx)
{
 u_int16_t *bp, newoff, pairlen;
 int n;

 bp = (u_int16_t *)bufp->page;
 n = bp[0];

 if (bp[ndx + 1] < REAL_KEY)
  return (__big_delete(hashp, bufp));
 if (ndx != 1)
  newoff = bp[ndx - 1];
 else
  newoff = hashp->BSIZE;
 pairlen = newoff - bp[ndx + 1];

 if (ndx != (n - 1)) {

  int i;
  char *src = bufp->page + (int)OFFSET(bp);
  char *dst = src + (int)pairlen;
  memmove(dst, src, bp[ndx + 1] - OFFSET(bp));


  for (i = ndx + 2; i <= n; i += 2) {
   if (bp[i + 1] == OVFLPAGE) {
    bp[i - 2] = bp[i];
    bp[i - 1] = bp[i + 1];
   } else {
    bp[i - 2] = bp[i] + pairlen;
    bp[i - 1] = bp[i + 1] + pairlen;
   }
  }
  if (ndx == hashp->cndx) {





   hashp->cndx -= 2;
  }
 }

 bp[n] = OFFSET(bp) + pairlen;
 bp[n - 1] = bp[n + 1] + pairlen + 2 * sizeof(u_int16_t);
 bp[0] = n - 2;
 hashp->NKEYS--;

 bufp->flags |= BUF_MOD;
 return (0);
}
