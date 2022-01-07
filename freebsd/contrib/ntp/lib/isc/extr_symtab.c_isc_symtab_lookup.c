
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_symvalue_t ;
typedef int isc_symtab_t ;
typedef int isc_result_t ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ elt_t ;


 int FIND (int *,char const*,unsigned int,unsigned int,TYPE_1__*) ;
 int ISC_R_NOTFOUND ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_SYMTAB (int *) ;

isc_result_t
isc_symtab_lookup(isc_symtab_t *symtab, const char *key, unsigned int type,
    isc_symvalue_t *value)
{
 unsigned int bucket;
 elt_t *elt;

 REQUIRE(VALID_SYMTAB(symtab));
 REQUIRE(key != ((void*)0));

 FIND(symtab, key, type, bucket, elt);

 if (elt == ((void*)0))
  return (ISC_R_NOTFOUND);

 if (value != ((void*)0))
  *value = elt->value;

 return (ISC_R_SUCCESS);
}
