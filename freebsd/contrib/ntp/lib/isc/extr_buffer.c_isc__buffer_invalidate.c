
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * mctx; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int ISC_LINK_LINKED (TYPE_1__*,int ) ;
 int ISC__BUFFER_INVALIDATE (TYPE_1__*) ;
 int REQUIRE (int) ;
 int link ;

void
isc__buffer_invalidate(isc_buffer_t *b) {




 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(!ISC_LINK_LINKED(b, link));
 REQUIRE(b->mctx == ((void*)0));

 ISC__BUFFER_INVALIDATE(b);
}
