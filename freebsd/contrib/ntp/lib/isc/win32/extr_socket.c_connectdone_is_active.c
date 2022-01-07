
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * connect_ev; } ;
typedef TYPE_1__ isc_socket_t ;
typedef int isc_socket_connev_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;

__attribute__((used)) static isc_boolean_t
connectdone_is_active(isc_socket_t *sock, isc_socket_connev_t *dev)
{
 return (sock->connect_ev == dev ? ISC_TRUE : ISC_FALSE);
}
