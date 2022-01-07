
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {union overhead* ov_next; } ;
typedef scalar_t__ caddr_t ;
typedef int U_long ;


 int ROUNDUP ;
 char* membot ;
 char* memtop ;
 union overhead** nextf ;
 char* sbrk (int) ;

__attribute__((used)) static void
morecore(int bucket)
{
    union overhead *op;
    int rnu;
    int nblks;
    int siz;

    if (nextf[bucket])
 return;




    op = (union overhead *) sbrk(0);
    memtop = (char *) op;
    if (membot == ((void*)0))
 membot = memtop;
    if ((long) op & 0x3ff) {
 memtop = sbrk((int) (1024 - ((long) op & 0x3ff)));
 memtop += (long) (1024 - ((long) op & 0x3ff));
    }


    rnu = (bucket <= 8) ? 11 : bucket + 3;
    nblks = 1 << (rnu - (bucket + 3));
    memtop = sbrk(1 << rnu);
    op = (union overhead *) memtop;

    if ((long) op == -1)
 return;
    memtop += (long) (1 << rnu);




    if (((U_long) op) & ROUNDUP) {
 op = (union overhead *) (((U_long) op + (ROUNDUP + 1)) & ~ROUNDUP);
 nblks--;
    }



    nextf[bucket] = op;
    siz = 1 << (bucket + 3);
    while (--nblks > 0) {
 op->ov_next = (union overhead *) (((caddr_t) op) + siz);
 op = (union overhead *) (((caddr_t) op) + siz);
    }
    op->ov_next = ((void*)0);
}
