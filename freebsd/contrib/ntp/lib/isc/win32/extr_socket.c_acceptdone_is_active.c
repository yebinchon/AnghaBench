
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int accept_list; } ;
typedef TYPE_1__ isc_socket_t ;
typedef int isc_socket_newconnev_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int * ISC_LIST_HEAD (int ) ;
 int * ISC_LIST_NEXT (int *,int ) ;
 int ISC_TRUE ;
 int ev_link ;

__attribute__((used)) static isc_boolean_t
acceptdone_is_active(isc_socket_t *sock, isc_socket_newconnev_t *dev)
{
 isc_socket_newconnev_t *ldev;

 ldev = ISC_LIST_HEAD(sock->accept_list);
 while (ldev != ((void*)0) && ldev != dev)
  ldev = ISC_LIST_NEXT(ldev, ev_link);

 return (ldev == ((void*)0) ? ISC_FALSE : ISC_TRUE);
}
