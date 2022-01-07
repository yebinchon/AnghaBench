
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t namehash; struct TYPE_6__* next; } ;
struct TYPE_5__ {size_t mask; int numEntries; TYPE_2__** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef TYPE_2__ Hash_Entry ;


 int abort () ;
 int free (char*) ;
 int write (int,char*,int) ;

void
Hash_DeleteEntry(Hash_Table *t, Hash_Entry *e)
{
 register Hash_Entry **hp, *p;

 if (e == ((void*)0))
  return;
 for (hp = &t->bucketPtr[e->namehash & t->mask];
      (p = *hp) != ((void*)0); hp = &p->next) {
  if (p == e) {
   *hp = p->next;
   free((char *)p);
   t->numEntries--;
   return;
  }
 }
 (void)write(2, "bad call to Hash_DeleteEntry\n", 29);
 abort();
}
