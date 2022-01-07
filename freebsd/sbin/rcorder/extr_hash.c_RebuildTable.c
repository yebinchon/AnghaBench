
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Hash_Entry {int namehash; struct Hash_Entry* next; } ;
struct TYPE_3__ {int size; int mask; struct Hash_Entry** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef struct Hash_Entry Hash_Entry ;


 scalar_t__ emalloc (int) ;
 int free (char*) ;

__attribute__((used)) static void
RebuildTable(register Hash_Table *t)
{
 register Hash_Entry *e, *next = ((void*)0), **hp, **xp;
 register int i, mask;
        register Hash_Entry **oldhp;
 int oldsize;

 oldhp = t->bucketPtr;
 oldsize = i = t->size;
 i <<= 1;
 t->size = i;
 t->mask = mask = i - 1;
 t->bucketPtr = hp = (struct Hash_Entry **) emalloc(sizeof(*hp) * i);
 while (--i >= 0)
  *hp++ = ((void*)0);
 for (hp = oldhp, i = oldsize; --i >= 0;) {
  for (e = *hp++; e != ((void*)0); e = next) {
   next = e->next;
   xp = &t->bucketPtr[e->namehash & mask];
   e->next = *xp;
   *xp = e;
  }
 }
 free((char *)oldhp);
}
