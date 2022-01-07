
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {scalar_t__ nextIndex; TYPE_3__* hashEntryPtr; TYPE_1__* tablePtr; } ;
struct TYPE_6__ {scalar_t__ size; TYPE_3__** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef TYPE_2__ Hash_Search ;
typedef TYPE_3__ Hash_Entry ;



Hash_Entry *
Hash_EnumNext(
 register Hash_Search *searchPtr)

{
 register Hash_Entry *e;
 Hash_Table *t = searchPtr->tablePtr;






 e = searchPtr->hashEntryPtr;
 if (e != ((void*)0))
  e = e->next;




 while (e == ((void*)0)) {
  if (searchPtr->nextIndex >= t->size)
   return (((void*)0));
  e = t->bucketPtr[searchPtr->nextIndex++];
 }
 searchPtr->hashEntryPtr = e;
 return (e);
}
