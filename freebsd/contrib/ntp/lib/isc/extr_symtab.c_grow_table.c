
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; unsigned int maxload; int * table; int mctx; int case_sensitive; } ;
typedef TYPE_1__ isc_symtab_t ;
typedef int eltlist_t ;
struct TYPE_10__ {int key; } ;
typedef TYPE_2__ elt_t ;


 int APPEND (int ,TYPE_2__*,int ) ;
 TYPE_2__* HEAD (int ) ;
 int INIT_LIST (int ) ;
 int INSIST (int) ;
 TYPE_2__* NEXT (TYPE_2__*,int ) ;
 int REQUIRE (int ) ;
 int UNLINK (int ,TYPE_2__*,int ) ;
 unsigned int hash (int ,int ) ;
 int * isc_mem_get (int ,unsigned int) ;
 int isc_mem_put (int ,int *,int) ;
 int link ;

__attribute__((used)) static void
grow_table(isc_symtab_t *symtab) {
 eltlist_t *newtable;
 unsigned int i, newsize, newmax;

 REQUIRE(symtab != ((void*)0));

 newsize = symtab->size * 2;
 newmax = newsize * 3 / 4;
 INSIST(newsize > 0U && newmax > 0U);

 newtable = isc_mem_get(symtab->mctx, newsize * sizeof(eltlist_t));
 if (newtable == ((void*)0))
  return;

 for (i = 0; i < newsize; i++)
  INIT_LIST(newtable[i]);

 for (i = 0; i < symtab->size; i++) {
  elt_t *elt, *nelt;

  for (elt = HEAD(symtab->table[i]); elt != ((void*)0); elt = nelt) {
   unsigned int hv;

   nelt = NEXT(elt, link);

   UNLINK(symtab->table[i], elt, link);
   hv = hash(elt->key, symtab->case_sensitive);
   APPEND(newtable[hv % newsize], elt, link);
  }
 }

 isc_mem_put(symtab->mctx, symtab->table,
      symtab->size * sizeof(eltlist_t));

 symtab->table = newtable;
 symtab->size = newsize;
 symtab->maxload = newmax;
}
