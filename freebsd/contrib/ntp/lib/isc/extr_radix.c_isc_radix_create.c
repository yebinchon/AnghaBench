
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_4__ {int maxbits; int magic; scalar_t__ num_added_node; scalar_t__ num_active_node; int * head; int * mctx; } ;
typedef TYPE_1__ isc_radix_tree_t ;
typedef int isc_mem_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int RADIX_MAXBITS ;
 int RADIX_TREE_MAGIC ;
 int REQUIRE (int) ;
 int RUNTIME_CHECK (int) ;
 TYPE_1__* isc_mem_get (int *,int) ;

isc_result_t
isc_radix_create(isc_mem_t *mctx, isc_radix_tree_t **target, int maxbits) {
 isc_radix_tree_t *radix;

 REQUIRE(target != ((void*)0) && *target == ((void*)0));

 radix = isc_mem_get(mctx, sizeof(isc_radix_tree_t));
 if (radix == ((void*)0))
  return (ISC_R_NOMEMORY);

 radix->mctx = mctx;
 radix->maxbits = maxbits;
 radix->head = ((void*)0);
 radix->num_active_node = 0;
 radix->num_added_node = 0;
 RUNTIME_CHECK(maxbits <= RADIX_MAXBITS);
 radix->magic = RADIX_TREE_MAGIC;
 *target = radix;
 return (ISC_R_SUCCESS);
}
