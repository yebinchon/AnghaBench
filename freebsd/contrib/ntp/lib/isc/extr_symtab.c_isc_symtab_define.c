
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int isc_symvalue_t ;
struct TYPE_11__ {scalar_t__ count; scalar_t__ maxload; int * table; int mctx; int undefine_arg; int (* undefine_action ) (int ,unsigned int,int ,int ) ;} ;
typedef TYPE_1__ isc_symtab_t ;
typedef scalar_t__ isc_symexists_t ;
typedef int isc_result_t ;
struct TYPE_12__ {unsigned int type; int value; int key; } ;
typedef TYPE_2__ elt_t ;


 int DE_CONST (char const*,int ) ;
 int FIND (TYPE_1__*,char const*,unsigned int,unsigned int,TYPE_2__*) ;
 int INSIST (int) ;
 int ISC_LINK_INIT (TYPE_2__*,int ) ;
 int ISC_R_EXISTS ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int PREPEND (int ,TYPE_2__*,int ) ;
 int REQUIRE (int) ;
 int UNLINK (int ,TYPE_2__*,int ) ;
 int VALID_SYMTAB (TYPE_1__*) ;
 int grow_table (TYPE_1__*) ;
 scalar_t__ isc_mem_get (int ,int) ;
 scalar_t__ isc_symexists_add ;
 scalar_t__ isc_symexists_reject ;
 scalar_t__ isc_symexists_replace ;
 int link ;
 int stub1 (int ,unsigned int,int ,int ) ;

isc_result_t
isc_symtab_define(isc_symtab_t *symtab, const char *key, unsigned int type,
    isc_symvalue_t value, isc_symexists_t exists_policy)
{
 unsigned int bucket;
 elt_t *elt;

 REQUIRE(VALID_SYMTAB(symtab));
 REQUIRE(key != ((void*)0));
 REQUIRE(type != 0);

 FIND(symtab, key, type, bucket, elt);

 if (exists_policy != isc_symexists_add && elt != ((void*)0)) {
  if (exists_policy == isc_symexists_reject)
   return (ISC_R_EXISTS);
  INSIST(exists_policy == isc_symexists_replace);
  UNLINK(symtab->table[bucket], elt, link);
  if (symtab->undefine_action != ((void*)0))
   (symtab->undefine_action)(elt->key, elt->type,
        elt->value,
        symtab->undefine_arg);
 } else {
  elt = (elt_t *)isc_mem_get(symtab->mctx, sizeof(*elt));
  if (elt == ((void*)0))
   return (ISC_R_NOMEMORY);
  ISC_LINK_INIT(elt, link);
  symtab->count++;
 }
 DE_CONST(key, elt->key);
 elt->type = type;
 elt->value = value;




 PREPEND(symtab->table[bucket], elt, link);

 if (symtab->count > symtab->maxload)
  grow_table(symtab);

 return (ISC_R_SUCCESS);
}
