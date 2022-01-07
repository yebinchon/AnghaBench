
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* tag; } ;
typedef TYPE_1__ isc_logconfig_t ;


 int REQUIRE (int ) ;
 int VALID_CONFIG (TYPE_1__*) ;

char *
isc_log_gettag(isc_logconfig_t *lcfg) {
 REQUIRE(VALID_CONFIG(lcfg));

 return (lcfg->tag);
}
