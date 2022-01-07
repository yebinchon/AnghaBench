
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_mem_t ;


 int ISCAPI_MCTX_VALID (int *) ;
 int REQUIRE (int ) ;

const char *
isc_mem_getname(isc_mem_t *mctx) {
 REQUIRE(ISCAPI_MCTX_VALID(mctx));

 return ("");
}
