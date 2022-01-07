
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_portset_t ;
typedef int in_port_t ;


 int portset_remove (int *,int ) ;

void
isc_portset_remove(isc_portset_t *portset, in_port_t port) {
 portset_remove(portset, port);
}
