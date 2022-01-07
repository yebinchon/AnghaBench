
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {union overhead* ov_next; } ;
typedef scalar_t__ caddr_t ;


 int FIRST_BUCKET_SIZE ;
 scalar_t__ NPOOLPAGES ;
 scalar_t__ morepages (scalar_t__) ;
 union overhead** nextf ;
 int pagepool_end ;
 int pagepool_start ;
 int pagesz ;

__attribute__((used)) static void
morecore(int bucket)
{
 union overhead *op;
 int sz;
   int amt;
   int nblks;

 sz = FIRST_BUCKET_SIZE << bucket;
 if (sz < pagesz) {
  amt = pagesz;
    nblks = amt / sz;
 } else {
  amt = sz;
  nblks = 1;
 }
 if (amt > pagepool_end - pagepool_start)
  if (morepages(amt/pagesz + NPOOLPAGES) == 0)
   return;
 op = (union overhead *)pagepool_start;
 pagepool_start += amt;





   nextf[bucket] = op;
   while (--nblks > 0) {
  op->ov_next = (union overhead *)((caddr_t)op + sz);
  op = (union overhead *)((caddr_t)op + sz);
   }
}
