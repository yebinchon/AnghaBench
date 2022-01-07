
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int u_int16_t ;
typedef int u_char ;
struct TYPE_26__ {int flags; scalar_t__ page; } ;
struct TYPE_25__ {int size; int * data; } ;
struct TYPE_24__ {int BSIZE; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ DBT ;
typedef TYPE_3__ BUFHEAD ;
typedef int ACTION ;


 int ABNORMAL ;
 int BUF_PIN ;
 int ERROR ;




 int OVFLPAGE ;
 int REAL_KEY ;
 int SUCCESS ;
 int __addel (TYPE_1__*,TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int __big_return (TYPE_1__*,TYPE_3__*,int,TYPE_2__*,int ) ;
 int __call_hash (TYPE_1__*,char*,int) ;
 int __delpair (TYPE_1__*,TYPE_3__*,int) ;
 int __find_bigpair (TYPE_1__*,TYPE_3__*,int,char*,int) ;
 int __find_last_page (TYPE_1__*,TYPE_3__**) ;
 TYPE_3__* __get_buf (TYPE_1__*,int,TYPE_3__*,int ) ;
 int abort () ;
 int hash_accesses ;
 int hash_collisions ;
 scalar_t__ memcmp (char*,scalar_t__,int) ;

__attribute__((used)) static int
hash_access(HTAB *hashp, ACTION action, DBT *key, DBT *val)
{
 BUFHEAD *rbufp;
 BUFHEAD *bufp, *save_bufp;
 u_int16_t *bp;
 int n, ndx, off, size;
 char *kp;
 u_int16_t pageno;





 off = hashp->BSIZE;
 size = key->size;
 kp = (char *)key->data;
 rbufp = __get_buf(hashp, __call_hash(hashp, kp, size), ((void*)0), 0);
 if (!rbufp)
  return (ERROR);
 save_bufp = rbufp;


 rbufp->flags |= BUF_PIN;
 for (bp = (u_int16_t *)rbufp->page, n = *bp++, ndx = 1; ndx < n;)
  if (bp[1] >= REAL_KEY) {

   if (size == off - *bp &&
       memcmp(kp, rbufp->page + *bp, size) == 0)
    goto found;
   off = bp[1];



   bp += 2;
   ndx += 2;
  } else if (bp[1] == OVFLPAGE) {
   rbufp = __get_buf(hashp, *bp, rbufp, 0);
   if (!rbufp) {
    save_bufp->flags &= ~BUF_PIN;
    return (ERROR);
   }

   bp = (u_int16_t *)rbufp->page;
   n = *bp++;
   ndx = 1;
   off = hashp->BSIZE;
  } else if (bp[1] < REAL_KEY) {
   if ((ndx =
       __find_bigpair(hashp, rbufp, ndx, kp, size)) > 0)
    goto found;
   if (ndx == -2) {
    bufp = rbufp;
    if (!(pageno =
        __find_last_page(hashp, &bufp))) {
     ndx = 0;
     rbufp = bufp;
     break;
    }
    rbufp = __get_buf(hashp, pageno, bufp, 0);
    if (!rbufp) {
     save_bufp->flags &= ~BUF_PIN;
     return (ERROR);
    }

    bp = (u_int16_t *)rbufp->page;
    n = *bp++;
    ndx = 1;
    off = hashp->BSIZE;
   } else {
    save_bufp->flags &= ~BUF_PIN;
    return (ERROR);
   }
  }


 switch (action) {
 case 129:
 case 128:
  if (__addel(hashp, rbufp, key, val)) {
   save_bufp->flags &= ~BUF_PIN;
   return (ERROR);
  } else {
   save_bufp->flags &= ~BUF_PIN;
   return (SUCCESS);
  }
 case 130:
 case 131:
 default:
  save_bufp->flags &= ~BUF_PIN;
  return (ABNORMAL);
 }

found:
 switch (action) {
 case 128:
  save_bufp->flags &= ~BUF_PIN;
  return (ABNORMAL);
 case 130:
  bp = (u_int16_t *)rbufp->page;
  if (bp[ndx + 1] < REAL_KEY) {
   if (__big_return(hashp, rbufp, ndx, val, 0))
    return (ERROR);
  } else {
   val->data = (u_char *)rbufp->page + (int)bp[ndx + 1];
   val->size = bp[ndx] - bp[ndx + 1];
  }
  break;
 case 129:
  if ((__delpair(hashp, rbufp, ndx)) ||
      (__addel(hashp, rbufp, key, val))) {
   save_bufp->flags &= ~BUF_PIN;
   return (ERROR);
  }
  break;
 case 131:
  if (__delpair(hashp, rbufp, ndx))
   return (ERROR);
  break;
 default:
  abort();
 }
 save_bufp->flags &= ~BUF_PIN;
 return (SUCCESS);
}
