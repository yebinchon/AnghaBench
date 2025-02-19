
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t u_int16_t ;
struct TYPE_15__ {char* page; int flags; } ;
struct TYPE_14__ {int NKEYS; int MAX_BUCKET; int FFACTOR; } ;
typedef TYPE_1__ HTAB ;
typedef int DBT ;
typedef TYPE_2__ BUFHEAD ;


 int BUF_MOD ;
 scalar_t__ FREESPACE (size_t*) ;
 size_t FULL_KEY_DATA ;
 size_t OVFLPAGE ;
 scalar_t__ PAIRFITS (size_t*,int const*,int const*) ;
 scalar_t__ PAIRSIZE (int const*,int const*) ;
 size_t REAL_KEY ;
 TYPE_2__* __add_ovflpage (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ __big_insert (TYPE_1__*,TYPE_2__*,int const*,int const*) ;
 int __expand_table (TYPE_1__*) ;
 TYPE_2__* __get_buf (TYPE_1__*,size_t,TYPE_2__*,int ) ;
 int putpair (char*,int const*,int const*) ;
 int squeeze_key (size_t*,int const*,int const*) ;

int
__addel(HTAB *hashp, BUFHEAD *bufp, const DBT *key, const DBT *val)
{
 u_int16_t *bp, *sop;
 int do_expand;

 bp = (u_int16_t *)bufp->page;
 do_expand = 0;
 while (bp[0] && (bp[2] < REAL_KEY || bp[bp[0]] < REAL_KEY))

  if (bp[2] == FULL_KEY_DATA && bp[0] == 2)


   break;
  else if (bp[2] < REAL_KEY && bp[bp[0]] != OVFLPAGE) {
   bufp = __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
   if (!bufp)
    return (-1);
   bp = (u_int16_t *)bufp->page;
  } else if (bp[bp[0]] != OVFLPAGE) {

   break;
  } else {

   if (bp[2] >= REAL_KEY &&
       FREESPACE(bp) >= PAIRSIZE(key, val)) {
    squeeze_key(bp, key, val);
    goto stats;
   } else {
    bufp = __get_buf(hashp, bp[bp[0] - 1], bufp, 0);
    if (!bufp)
     return (-1);
    bp = (u_int16_t *)bufp->page;
   }
  }

 if (PAIRFITS(bp, key, val))
  putpair(bufp->page, key, val);
 else {
  do_expand = 1;
  bufp = __add_ovflpage(hashp, bufp);
  if (!bufp)
   return (-1);
  sop = (u_int16_t *)bufp->page;

  if (PAIRFITS(sop, key, val))
   putpair((char *)sop, key, val);
  else
   if (__big_insert(hashp, bufp, key, val))
    return (-1);
 }
stats:
 bufp->flags |= BUF_MOD;




 hashp->NKEYS++;
 if (do_expand ||
     (hashp->NKEYS / (hashp->MAX_BUCKET + 1) > hashp->FFACTOR))
  return (__expand_table(hashp));
 return (0);
}
