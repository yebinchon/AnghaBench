
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct TYPE_9__ {int addr; } ;
struct TYPE_8__ {int* SPARES; int LAST_FREED; int BSHIFT; int BSIZE; int ** mapp; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ BUFHEAD ;


 int BYTE_SHIFT ;
 int CLRBIT (int *,int) ;
 int SPLITMASK ;
 int SPLITSHIFT ;
 int __reclaim_buf (TYPE_1__*,TYPE_2__*) ;
 int assert (int ) ;
 int * fetch_bitmap (TYPE_1__*,int) ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

void
__free_ovflpage(HTAB *hashp, BUFHEAD *obufp)
{
 u_int16_t addr;
 u_int32_t *freep;
 int bit_address, free_page, free_bit;
 u_int16_t ndx;

 addr = obufp->addr;



 ndx = (((u_int16_t)addr) >> SPLITSHIFT);
 bit_address =
     (ndx ? hashp->SPARES[ndx - 1] : 0) + (addr & SPLITMASK) - 1;
  if (bit_address < hashp->LAST_FREED)
  hashp->LAST_FREED = bit_address;
 free_page = (bit_address >> (hashp->BSHIFT + BYTE_SHIFT));
 free_bit = bit_address & ((hashp->BSIZE << BYTE_SHIFT) - 1);

 if (!(freep = hashp->mapp[free_page]))
  freep = fetch_bitmap(hashp, free_page);
 CLRBIT(freep, free_bit);




 __reclaim_buf(hashp, obufp);
}
