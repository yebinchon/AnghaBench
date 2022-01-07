
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ seclen; struct TYPE_6__* next; struct TYPE_6__* keyacclist; } ;
typedef TYPE_1__ KeyDataT ;
typedef TYPE_1__ KeyAccT ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void
free_keydata(
 KeyDataT *node
 )
{
 KeyAccT *kap;

 if (node) {
  while (node->keyacclist) {
   kap = node->keyacclist;
   node->keyacclist = kap->next;
   free(kap);
  }


  memset(node, 0, sizeof(*node) + node->seclen);
  free(node);
 }
}
