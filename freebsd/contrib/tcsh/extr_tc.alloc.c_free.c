
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {scalar_t__ ov_magic; int ov_index; union overhead* ov_next; scalar_t__ ov_size; } ;
typedef int * ptr_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ U_int ;


 int CGETS (int,int,char*) ;
 int CHECK (int,int ,int *) ;
 scalar_t__ MAGIC ;
 scalar_t__ MEMALIGN (int) ;
 int NBUCKETS ;
 scalar_t__ RMAGIC ;
 scalar_t__ RSLOP ;
 scalar_t__ dont_free ;
 scalar_t__ membot ;
 scalar_t__ memtop ;
 union overhead** nextf ;
 int * nmalloc ;

void
free(ptr_t cp)
{

    int size;
    union overhead *op;





    if (cp == ((void*)0) || dont_free)
 return;
    CHECK(!memtop || !membot,
   CGETS(19, 2, "free(%p) called before any allocations."), cp);
    CHECK(cp > (ptr_t) memtop,
   CGETS(19, 3, "free(%p) above top of memory."), cp);
    CHECK(cp < (ptr_t) membot,
   CGETS(19, 4, "free(%p) below bottom of memory."), cp);
    op = (union overhead *) (((caddr_t) cp) - MEMALIGN(sizeof(union overhead)));
    CHECK(op->ov_magic != MAGIC,
   CGETS(19, 5, "free(%p) bad block."), cp);






    CHECK(op->ov_index >= NBUCKETS,
   CGETS(19, 7, "free(%p) bad block index."), cp);
    size = op->ov_index;
    op->ov_next = nextf[size];
    nextf[size] = op;

    nmalloc[size]--;





}
