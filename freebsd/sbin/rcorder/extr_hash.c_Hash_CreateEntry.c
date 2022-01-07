
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Hash_Entry {unsigned int namehash; int name; int * clientData; struct Hash_Entry* next; } ;
struct TYPE_4__ {unsigned int mask; int numEntries; int size; struct Hash_Entry** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef struct Hash_Entry Hash_Entry ;
typedef int Boolean ;


 int FALSE ;
 int RebuildTable (TYPE_1__*) ;
 int TRUE ;
 scalar_t__ emalloc (int) ;
 int rebuildLimit ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (int ,char*) ;

Hash_Entry *
Hash_CreateEntry(
 register Hash_Table *t,
 char *key,
 Boolean *newPtr)

{
 register Hash_Entry *e;
 register unsigned h;
 register char *p;
 int keylen;
 struct Hash_Entry **hp;





 for (h = 0, p = key; *p;)
  h = (h << 5) - h + *p++;
 keylen = p - key;
 p = key;
 for (e = t->bucketPtr[h & t->mask]; e != ((void*)0); e = e->next) {
  if (e->namehash == h && strcmp(e->name, p) == 0) {
   if (newPtr != ((void*)0))
    *newPtr = FALSE;
   return (e);
  }
 }






 if (t->numEntries >= rebuildLimit * t->size)
  RebuildTable(t);
 e = (Hash_Entry *) emalloc(sizeof(*e) + keylen);
 hp = &t->bucketPtr[h & t->mask];
 e->next = *hp;
 *hp = e;
 e->clientData = ((void*)0);
 e->namehash = h;
 (void) strcpy(e->name, p);
 t->numEntries++;

 if (newPtr != ((void*)0))
  *newPtr = TRUE;
 return (e);
}
