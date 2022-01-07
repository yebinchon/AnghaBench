
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _socket; } ;
typedef TYPE_1__ ldns_resolver ;


 int close (scalar_t__) ;

__attribute__((used)) static void
ldns_tcp_close(ldns_resolver *res) {
    if (res->_socket > 0) {
        close(res->_socket);
        res->_socket = 0;
    }
}
