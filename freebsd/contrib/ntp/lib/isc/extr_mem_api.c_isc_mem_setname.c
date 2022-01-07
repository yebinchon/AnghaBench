
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_mem_t ;


 int ISCAPI_MCTX_VALID (int *) ;
 int REQUIRE (int ) ;
 int UNUSED (void*) ;

void
isc_mem_setname(isc_mem_t *mctx, const char *name, void *tag) {
 REQUIRE(ISCAPI_MCTX_VALID(mctx));

 UNUSED(name);
 UNUSED(tag);

 return;
}
