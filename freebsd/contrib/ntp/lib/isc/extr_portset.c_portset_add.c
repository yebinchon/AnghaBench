
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* buf; int nports; } ;
typedef TYPE_1__ isc_portset_t ;
typedef int in_port_t ;


 int portset_isset (TYPE_1__*,int) ;

__attribute__((used)) static inline void
portset_add(isc_portset_t *portset, in_port_t port) {
 if (!portset_isset(portset, port)) {
  portset->nports++;
  portset->buf[port >> 5] |= (1 << (port & 31));
 }
}
