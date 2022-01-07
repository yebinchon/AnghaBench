
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetCurrentThread () ;
 int ISC_FALSE ;
 int REQUIRE (int) ;
 int blocked ;
 scalar_t__ blockedthread ;
 int running ;

void
isc__app_unblock(void) {
 REQUIRE(running);
 REQUIRE(blocked);
 blocked = ISC_FALSE;
 REQUIRE(blockedthread == GetCurrentThread());
}
