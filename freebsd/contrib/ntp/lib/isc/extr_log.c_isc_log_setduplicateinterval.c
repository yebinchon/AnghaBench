
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int duplicate_interval; } ;
typedef TYPE_1__ isc_logconfig_t ;


 int REQUIRE (int ) ;
 int VALID_CONFIG (TYPE_1__*) ;

void
isc_log_setduplicateinterval(isc_logconfig_t *lcfg, unsigned int interval) {
 REQUIRE(VALID_CONFIG(lcfg));

 lcfg->duplicate_interval = interval;
}
