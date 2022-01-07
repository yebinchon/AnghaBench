
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef scalar_t__ ldns_status ;
struct TYPE_4__ {scalar_t__ _socket; } ;
typedef TYPE_1__ ldns_resolver ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int close (scalar_t__) ;
 int free (int *) ;
 int gettimeofday (struct timeval*,int *) ;
 int ldns_pkt_set_querytime (int *,scalar_t__) ;
 int ldns_pkt_set_timestamp (int *,struct timeval) ;
 int ldns_resolver_timeout (TYPE_1__*) ;
 int * ldns_tcp_read_wire_timeout (scalar_t__,size_t*,int ) ;
 scalar_t__ ldns_wire2pkt (int **,int *,size_t) ;

__attribute__((used)) static ldns_status
ldns_tcp_read(ldns_pkt **answer, ldns_resolver *res) {
    ldns_status status;
    struct timeval t1, t2;
    uint8_t *data;
    size_t size;

    if (res->_socket <= 0)
        return LDNS_STATUS_ERR;

    gettimeofday(&t1, ((void*)0));
    data = ldns_tcp_read_wire_timeout(
            res->_socket, &size, ldns_resolver_timeout(res));
    if (data == ((void*)0))
        goto error;

    status = ldns_wire2pkt(answer, data, size);
    free(data);
    if (status != LDNS_STATUS_OK)
        goto error;

    gettimeofday(&t2, ((void*)0));
    ldns_pkt_set_querytime(*answer,
            (uint32_t)((t2.tv_sec - t1.tv_sec)*1000) +
                (t2.tv_usec - t1.tv_usec)/1000);
    ldns_pkt_set_timestamp(*answer, t2);
    return status;

error:
    close(res->_socket);
    res->_socket = 0;
    return LDNS_STATUS_ERR;
}
