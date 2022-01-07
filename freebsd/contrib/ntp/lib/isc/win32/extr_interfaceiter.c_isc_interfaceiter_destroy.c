
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ipaasize; int buf4size; int buf6size; int mctx; scalar_t__ magic; struct TYPE_5__* buf6; struct TYPE_5__* buf4; struct TYPE_5__* ipaa; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int REQUIRE (int) ;
 int VALID_IFITER (TYPE_1__*) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;
 scalar_t__ use_GAA ;
 int use_GAA_determined ;

void
isc_interfaceiter_destroy(isc_interfaceiter_t **iterp) {
 isc_interfaceiter_t *iter;

 REQUIRE(iterp != ((void*)0));
 iter = *iterp;
 REQUIRE(VALID_IFITER(iter));
 REQUIRE(use_GAA_determined);

 if (use_GAA) {
  REQUIRE(((void*)0) == iter->buf4);
  REQUIRE(((void*)0) == iter->buf4);
  if (iter->ipaa != ((void*)0))
   isc_mem_put(iter->mctx, iter->ipaa, iter->ipaasize);
 } else {
  REQUIRE(((void*)0) == iter->ipaa);
  if (iter->buf4 != ((void*)0))
   isc_mem_put(iter->mctx, iter->buf4, iter->buf4size);
  if (iter->buf6 != ((void*)0))
   isc_mem_put(iter->mctx, iter->buf6, iter->buf6size);
 }

 iter->magic = 0;
 isc_mem_put(iter->mctx, iter, sizeof(*iter));
 *iterp = ((void*)0);
}
