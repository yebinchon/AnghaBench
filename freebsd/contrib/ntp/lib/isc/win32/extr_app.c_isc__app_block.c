
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentThread () ;
 scalar_t__ ISC_TRUE ;
 int REQUIRE (int) ;
 scalar_t__ blocked ;
 int blockedthread ;
 int running ;

void
isc__app_block(void) {
 REQUIRE(running);
 REQUIRE(!blocked);

 blocked = ISC_TRUE;
 blockedthread = GetCurrentThread();
}
