
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {int ov_index; void* ov_rmagic; scalar_t__ ov_size; int ov_magic; union overhead* ov_next; } ;
typedef int memalign_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ U_short ;
typedef void* U_int ;


 int CGETS (int,int,char*) ;
 int MAGIC ;
 size_t MEMALIGN (int) ;
 void* RMAGIC ;
 size_t RSLOP ;
 int abort () ;
 int child ;
 int morecore (int) ;
 union overhead** nextf ;
 int * nmalloc ;
 int out_of_memory () ;
 int showall (int *,int *) ;
 int xprintf (int ,size_t) ;

memalign_t
malloc(size_t nbytes)
{

    union overhead *p;
    int bucket = 0;
    unsigned shiftr;
    nbytes = MEMALIGN(MEMALIGN(sizeof(union overhead)) + nbytes + RSLOP);
    shiftr = (nbytes - 1) >> 2;


    while ((shiftr >>= 1) != 0)
 bucket++;




    if (nextf[bucket] == ((void*)0))
 morecore(bucket);
    if ((p = nextf[bucket]) == ((void*)0)) {
 child++;

 out_of_memory();






 return ((memalign_t) 0);
    }

    nextf[bucket] = nextf[bucket]->ov_next;
    p->ov_magic = MAGIC;
    p->ov_index = bucket;
    nmalloc[bucket]++;
    return ((memalign_t) (((caddr_t) p) + MEMALIGN(sizeof(union overhead))));






}
