
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_mem_t ;
struct TYPE_6__ {int length; int * mctx; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int REQUIRE (int ) ;
 int isc_buffer_invalidate (TYPE_1__*) ;
 int isc_mem_put (int *,TYPE_1__*,unsigned int) ;

void
isc_buffer_free(isc_buffer_t **dynbuffer) {
 unsigned int real_length;
 isc_buffer_t *dbuf;
 isc_mem_t *mctx;

 REQUIRE(dynbuffer != ((void*)0));
 REQUIRE(ISC_BUFFER_VALID(*dynbuffer));
 REQUIRE((*dynbuffer)->mctx != ((void*)0));

 dbuf = *dynbuffer;
 *dynbuffer = ((void*)0);

 real_length = dbuf->length + sizeof(isc_buffer_t);
 mctx = dbuf->mctx;
 dbuf->mctx = ((void*)0);
 isc_buffer_invalidate(dbuf);

 isc_mem_put(mctx, dbuf, real_length);
}
