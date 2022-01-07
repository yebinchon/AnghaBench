
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Hash_Entry {struct Hash_Entry* next; } ;
struct TYPE_3__ {int size; struct Hash_Entry** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;


 int free (char*) ;

void
Hash_DeleteTable(Hash_Table *t)
{
 register struct Hash_Entry **hp, *h, *nexth = ((void*)0);
 register int i;

 for (hp = t->bucketPtr, i = t->size; --i >= 0;) {
  for (h = *hp++; h != ((void*)0); h = nexth) {
   nexth = h->next;
   free((char *)h);
  }
 }
 free((char *)t->bucketPtr);





 t->bucketPtr = ((void*)0);
}
