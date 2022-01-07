
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int duplicate_interval; } ;
typedef TYPE_1__ isc_logconfig_t ;


 int REQUIRE (int ) ;
 int VALID_CONTEXT (TYPE_1__*) ;

unsigned int
isc_log_getduplicateinterval(isc_logconfig_t *lcfg) {
 REQUIRE(VALID_CONTEXT(lcfg));

 return (lcfg->duplicate_interval);
}
