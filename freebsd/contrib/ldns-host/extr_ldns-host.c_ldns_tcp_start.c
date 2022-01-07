
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;
typedef scalar_t__ ldns_status ;
struct TYPE_5__ {int _socket; int * _nameservers; } ;
typedef TYPE_1__ ldns_resolver ;
typedef int ldns_pkt ;
typedef int ldns_buffer ;


 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_ADDRESS_ERR ;
 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_NETWORK_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int close (int ) ;
 int free (struct sockaddr_storage*) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 scalar_t__ ldns_pkt2buffer_wire (int *,int *) ;
 struct sockaddr_storage* ldns_rdf2native_sockaddr_storage (int ,int ,size_t*) ;
 int ldns_resolver_port (TYPE_1__*) ;
 int ldns_resolver_timeout (TYPE_1__*) ;
 int ldns_tcp_connect (struct sockaddr_storage*,int ,int ) ;
 scalar_t__ ldns_tcp_send_query (int *,int ,struct sockaddr_storage*,int ) ;

__attribute__((used)) static ldns_status
ldns_tcp_start(ldns_resolver *res, ldns_pkt *qpkt, int nameserver) {



    struct sockaddr_storage *ns = ((void*)0);
    size_t ns_len = 0;
    ldns_buffer *qbuf = ((void*)0);
    ldns_status status;

    ns = ldns_rdf2native_sockaddr_storage(
            res->_nameservers[nameserver], ldns_resolver_port(res), &ns_len);
    if (ns == ((void*)0)) {
        status = LDNS_STATUS_MEM_ERR;
        goto error;
    }

    res->_socket = ldns_tcp_connect(
            ns, (socklen_t)ns_len, ldns_resolver_timeout(res));
    if (res->_socket <= 0) {
        status = LDNS_STATUS_ADDRESS_ERR;
        goto error;
    }

    qbuf = ldns_buffer_new(LDNS_MAX_PACKETLEN);
    if (qbuf == ((void*)0)) {
        status = LDNS_STATUS_MEM_ERR;
        goto error;
    }

    status = ldns_pkt2buffer_wire(qbuf, qpkt);
    if (status != LDNS_STATUS_OK)
        goto error;

    if (ldns_tcp_send_query(qbuf, res->_socket, ns, (socklen_t)ns_len) == 0) {
        status = LDNS_STATUS_NETWORK_ERR;
        goto error;
    }

    ldns_buffer_free(qbuf);
    free(ns);
    return LDNS_STATUS_OK;

error:
    ldns_buffer_free(qbuf);
    free(ns);
    if (res->_socket > 0) {
        close(res->_socket);
        res->_socket = 0;
    }
    return status;
}
