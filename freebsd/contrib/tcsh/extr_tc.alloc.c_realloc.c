
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {scalar_t__ ov_magic; int ov_index; scalar_t__ ov_size; void* ov_rmagic; } ;
typedef int * ptr_t ;
typedef int * memalign_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ U_short ;
typedef size_t U_int ;


 scalar_t__ MAGIC ;
 int MEMALIGN (int) ;
 void* RMAGIC ;
 size_t RSLOP ;
 int findbucket (union overhead*,int) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memmove (int *,int *,size_t) ;
 int realloc_srchlen ;

memalign_t
realloc(ptr_t cp, size_t nbytes)
{

    U_int onb;
    union overhead *op;
    ptr_t res;
    int i;
    int was_alloced = 0;

    if (cp == ((void*)0))
 return (malloc(nbytes));
    op = (union overhead *) (((caddr_t) cp) - MEMALIGN(sizeof(union overhead)));
    if (op->ov_magic == MAGIC) {
 was_alloced++;
 i = op->ov_index;
    }
    else
 if ((i = findbucket(op, 1)) < 0 &&
     (i = findbucket(op, realloc_srchlen)) < 0)
     i = 0;

    onb = MEMALIGN(nbytes + MEMALIGN(sizeof(union overhead)) + RSLOP);


    if (was_alloced && (onb <= (U_int) (1 << (i + 3))) &&
 (onb > (U_int) (1 << (i + 2)))) {







 return ((memalign_t) cp);
    }
    if ((res = malloc(nbytes)) == ((void*)0))
 return ((memalign_t) ((void*)0));
    if (cp != res) {




 onb = (1 << (i + 3)) - MEMALIGN(sizeof(union overhead)) - RSLOP;
 (void) memmove(res, cp, onb < nbytes ? onb : nbytes);
    }
    if (was_alloced)
 free(cp);
    return ((memalign_t) res);






}
