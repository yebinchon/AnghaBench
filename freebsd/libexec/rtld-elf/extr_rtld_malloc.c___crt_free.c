
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union overhead {scalar_t__ ov_magic; int ov_index; union overhead* ov_next; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ MAGIC ;
 union overhead** nextf ;

void
__crt_free(void *cp)
{
 int size;
 union overhead *op;

   if (cp == ((void*)0))
    return;
 op = (union overhead *)((caddr_t)cp - sizeof (union overhead));
 if (op->ov_magic != MAGIC)
  return;
   size = op->ov_index;
 op->ov_next = nextf[size];
   nextf[size] = op;
}
