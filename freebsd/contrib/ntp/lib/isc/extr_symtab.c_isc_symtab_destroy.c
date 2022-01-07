
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned int size; int mctx; scalar_t__ magic; struct TYPE_10__* table; int undefine_arg; int value; int type; int key; int (* undefine_action ) (int ,int ,int ,int ) ;} ;
typedef TYPE_1__ isc_symtab_t ;
typedef int eltlist_t ;
typedef TYPE_1__ elt_t ;


 TYPE_1__* HEAD (TYPE_1__) ;
 TYPE_1__* NEXT (TYPE_1__*,int ) ;
 int REQUIRE (int ) ;
 int VALID_SYMTAB (TYPE_1__*) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;
 int link ;
 int stub1 (int ,int ,int ,int ) ;

void
isc_symtab_destroy(isc_symtab_t **symtabp) {
 isc_symtab_t *symtab;
 unsigned int i;
 elt_t *elt, *nelt;

 REQUIRE(symtabp != ((void*)0));
 symtab = *symtabp;
 REQUIRE(VALID_SYMTAB(symtab));

 for (i = 0; i < symtab->size; i++) {
  for (elt = HEAD(symtab->table[i]); elt != ((void*)0); elt = nelt) {
   nelt = NEXT(elt, link);
   if (symtab->undefine_action != ((void*)0))
          (symtab->undefine_action)(elt->key,
        elt->type,
        elt->value,
        symtab->undefine_arg);
   isc_mem_put(symtab->mctx, elt, sizeof(*elt));
  }
 }
 isc_mem_put(symtab->mctx, symtab->table,
      symtab->size * sizeof(eltlist_t));
 symtab->magic = 0;
 isc_mem_put(symtab->mctx, symtab, sizeof(*symtab));

 *symtabp = ((void*)0);
}
