
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bufsize; int mctx; scalar_t__ magic; struct TYPE_6__* buf; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int REQUIRE (int ) ;
 int VALID_IFITER (TYPE_1__*) ;
 int internal_destroy (TYPE_1__*) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;

void
isc_interfaceiter_destroy(isc_interfaceiter_t **iterp)
{
 isc_interfaceiter_t *iter;
 REQUIRE(iterp != ((void*)0));
 iter = *iterp;
 REQUIRE(VALID_IFITER(iter));

 internal_destroy(iter);
 if (iter->buf != ((void*)0))
  isc_mem_put(iter->mctx, iter->buf, iter->bufsize);

 iter->magic = 0;
 isc_mem_put(iter->mctx, iter, sizeof(*iter));
 *iterp = ((void*)0);
}
