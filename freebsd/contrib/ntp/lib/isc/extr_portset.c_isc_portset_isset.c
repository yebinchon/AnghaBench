
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_portset_t ;
typedef int isc_boolean_t ;
typedef int in_port_t ;


 int REQUIRE (int ) ;
 int portset_isset (int *,int ) ;

isc_boolean_t
isc_portset_isset(isc_portset_t *portset, in_port_t port) {
 REQUIRE(portset != ((void*)0));

 return (portset_isset(portset, port));
}
