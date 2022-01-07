
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_symtabaction_t ;
struct TYPE_4__ {unsigned int size; unsigned int maxload; int magic; int case_sensitive; void* undefine_arg; int undefine_action; scalar_t__ count; int * mctx; int * table; } ;
typedef TYPE_1__ isc_symtab_t ;
typedef int isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_boolean_t ;
typedef int eltlist_t ;


 int INIT_LIST (int ) ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int SYMTAB_MAGIC ;
 scalar_t__ isc_mem_get (int *,unsigned int) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;

isc_result_t
isc_symtab_create(isc_mem_t *mctx, unsigned int size,
    isc_symtabaction_t undefine_action,
    void *undefine_arg,
    isc_boolean_t case_sensitive,
    isc_symtab_t **symtabp)
{
 isc_symtab_t *symtab;
 unsigned int i;

 REQUIRE(mctx != ((void*)0));
 REQUIRE(symtabp != ((void*)0) && *symtabp == ((void*)0));
 REQUIRE(size > 0);

 symtab = (isc_symtab_t *)isc_mem_get(mctx, sizeof(*symtab));
 if (symtab == ((void*)0))
  return (ISC_R_NOMEMORY);
 symtab->table = (eltlist_t *)isc_mem_get(mctx,
       size * sizeof(eltlist_t));
 if (symtab->table == ((void*)0)) {
  isc_mem_put(mctx, symtab, sizeof(*symtab));
  return (ISC_R_NOMEMORY);
 }
 for (i = 0; i < size; i++)
  INIT_LIST(symtab->table[i]);
 symtab->mctx = mctx;
 symtab->size = size;
 symtab->count = 0;
 symtab->maxload = size * 3 / 4;
 symtab->undefine_action = undefine_action;
 symtab->undefine_arg = undefine_arg;
 symtab->case_sensitive = case_sensitive;
 symtab->magic = SYMTAB_MAGIC;

 *symtabp = symtab;

 return (ISC_R_SUCCESS);
}
