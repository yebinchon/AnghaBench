
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef scalar_t__ ldns_status ;
typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int const ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RR_TYPE_IXFR ;
 int LDNS_SECTION_AUTHORITY ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_free (int *) ;
 scalar_t__ ldns_pkt_push_rr_soa (int *,int ,int const*,int ,int ) ;
 int * ldns_pkt_query_new (int ,scalar_t__,int ,int ) ;
 int ldns_pkt_set_answerfrom (int *,int ) ;
 int ldns_pkt_set_random_id (int *) ;
 int ldns_pkt_set_timestamp (int *,struct timeval) ;
 int ldns_rdf_clone (int const*) ;
 int ldns_resolver_nameserver_count (int *) ;
 int const** ldns_resolver_nameservers (int *) ;
 size_t* ldns_resolver_rtt (int *) ;
 scalar_t__ ldns_resolver_send_pkt (int **,int *,int *) ;
 int ldns_resolver_set_nameserver_count (int *,int) ;
 int ldns_resolver_set_nameservers (int *,int const**) ;
 int ldns_resolver_set_rtt (int *,size_t*) ;
 scalar_t__ ldns_tcp_read (int **,int *) ;
 scalar_t__ ldns_tcp_start (int *,int *,int ) ;
 int time (int *) ;

__attribute__((used)) static ldns_status
ldns_resolver_send_to(ldns_pkt **answer, ldns_resolver *res,
    const ldns_rdf *name, ldns_rr_type t, ldns_rr_class c,
    uint16_t flags, uint32_t ixfr_serial, int nameserver,
    bool close_tcp) {
    ldns_status status = LDNS_STATUS_OK;
    ldns_pkt *qpkt;
    struct timeval now;

    int nscnt = ldns_resolver_nameserver_count(res);
    ldns_rdf **ns = ldns_resolver_nameservers(res);
    size_t *rtt = ldns_resolver_rtt(res);

    ldns_resolver_set_nameservers(res, &ns[nameserver]);
    ldns_resolver_set_rtt(res, &rtt[nameserver]);
    ldns_resolver_set_nameserver_count(res, 1);







    qpkt = ldns_pkt_query_new(ldns_rdf_clone(name), t, c, flags);
    if (qpkt == ((void*)0)) {
        status = LDNS_STATUS_ERR;
        goto done;
    }
    now.tv_sec = time(((void*)0));
    now.tv_usec = 0;
    ldns_pkt_set_timestamp(qpkt, now);
    ldns_pkt_set_random_id(qpkt);

    if (t == LDNS_RR_TYPE_IXFR) {
        status = ldns_pkt_push_rr_soa(qpkt,
            LDNS_SECTION_AUTHORITY, name, c, ixfr_serial);
        if (status != LDNS_STATUS_OK) goto done;
    }
    if (close_tcp) {
        status = ldns_resolver_send_pkt(answer, res, qpkt);
    } else {
        status = ldns_tcp_start(res, qpkt, 0);
        if (status != LDNS_STATUS_OK) goto done;
        status = ldns_tcp_read(answer, res);
        if (status != LDNS_STATUS_OK) goto done;
        ldns_pkt_set_answerfrom(*answer, ldns_rdf_clone(ns[0]));
    }

done:
    ldns_pkt_free(qpkt);

    ldns_resolver_set_nameservers(res, ns);
    ldns_resolver_set_rtt(res, rtt);
    ldns_resolver_set_nameserver_count(res, nscnt);
    return status;
}
