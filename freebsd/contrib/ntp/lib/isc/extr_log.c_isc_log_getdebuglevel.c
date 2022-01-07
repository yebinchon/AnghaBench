
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int debug_level; } ;
typedef TYPE_1__ isc_log_t ;


 int REQUIRE (int ) ;
 int VALID_CONTEXT (TYPE_1__*) ;

unsigned int
isc_log_getdebuglevel(isc_log_t *lctx) {
 REQUIRE(VALID_CONTEXT(lctx));

 return (lctx->debug_level);
}
