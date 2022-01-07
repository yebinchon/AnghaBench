
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _socket; } ;
typedef TYPE_1__ ldns_resolver ;


 int close (scalar_t__) ;
 int closesocket (scalar_t__) ;

void
ldns_axfr_abort(ldns_resolver *resolver)
{

 if (resolver->_socket != 0)
 {

  close(resolver->_socket);



  resolver->_socket = 0;
 }
}
