
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int count; int mctx; int * table; int undefine_arg; int (* undefine_action ) (int ,int ,int ,int ) ;} ;
typedef TYPE_1__ isc_symtab_t ;
typedef int isc_result_t ;
struct TYPE_10__ {int value; int type; int key; } ;
typedef TYPE_2__ elt_t ;


 int FIND (TYPE_1__*,char const*,unsigned int,unsigned int,TYPE_2__*) ;
 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int UNLINK (int ,TYPE_2__*,int ) ;
 int VALID_SYMTAB (TYPE_1__*) ;
 int isc_mem_put (int ,TYPE_2__*,int) ;
 int link ;
 int stub1 (int ,int ,int ,int ) ;

isc_result_t
isc_symtab_undefine(isc_symtab_t *symtab, const char *key, unsigned int type) {
 unsigned int bucket;
 elt_t *elt;

 REQUIRE(VALID_SYMTAB(symtab));
 REQUIRE(key != ((void*)0));

 FIND(symtab, key, type, bucket, elt);

 if (elt == ((void*)0))
  return (ISC_R_NOTFOUND);

 if (symtab->undefine_action != ((void*)0))
  (symtab->undefine_action)(elt->key, elt->type,
       elt->value, symtab->undefine_arg);
 UNLINK(symtab->table[bucket], elt, link);
 isc_mem_put(symtab->mctx, elt, sizeof(*elt));
 symtab->count--;

 return (ISC_R_SUCCESS);
}
