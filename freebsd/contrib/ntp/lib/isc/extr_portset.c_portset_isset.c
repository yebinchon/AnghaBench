
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ isc_portset_t ;
typedef int isc_boolean_t ;
typedef int in_port_t ;


 int ISC_TF (int) ;

__attribute__((used)) static inline isc_boolean_t
portset_isset(isc_portset_t *portset, in_port_t port) {
 return (ISC_TF((portset->buf[port >> 5] & (1 << (port & 31))) != 0));
}
