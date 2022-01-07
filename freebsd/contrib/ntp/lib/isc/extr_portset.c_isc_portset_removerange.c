
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_portset_t ;
typedef scalar_t__ in_port_t ;


 int REQUIRE (int) ;
 int portset_remove (int *,scalar_t__) ;

void
isc_portset_removerange(isc_portset_t *portset, in_port_t port_lo,
   in_port_t port_hi)
{
 in_port_t p;

 REQUIRE(portset != ((void*)0));
 REQUIRE(port_lo <= port_hi);

 p = port_lo;
 do {
  portset_remove(portset, p);
 } while (p++ < port_hi);
}
