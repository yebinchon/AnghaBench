
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_logconfig_t ;
struct TYPE_4__ {int * logconfig; } ;
typedef TYPE_1__ isc_log_t ;


 int ENSURE (int ) ;
 int REQUIRE (int ) ;
 int VALID_CONTEXT (TYPE_1__*) ;

isc_logconfig_t *
isc_logconfig_get(isc_log_t *lctx) {
 REQUIRE(VALID_CONTEXT(lctx));

 ENSURE(lctx->logconfig != ((void*)0));

 return (lctx->logconfig);
}
