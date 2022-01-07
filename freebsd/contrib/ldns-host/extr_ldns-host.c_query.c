
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef scalar_t__ ldns_pkt_rcode ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_SERVFAIL ;
 int LDNS_RD ;
 scalar_t__ LDNS_STATUS_OK ;
 int exit (int) ;
 scalar_t__ ldns_pkt_get_rcode (int *) ;
 scalar_t__ ldns_pkt_tc (int *) ;
 int ldns_resolver_nameserver_count (int *) ;
 scalar_t__ ldns_resolver_send_to (int **,int *,int *,int ,int ,int ,int ,int,int) ;
 int ldns_resolver_set_usevc (int *,int) ;
 int ldns_resolver_usevc (int *) ;
 scalar_t__ o_ignore_servfail ;
 int o_ixfr_serial ;
 scalar_t__ o_recursive ;
 int o_rrclass ;
 int o_rrtype ;
 scalar_t__ o_verbose ;
 int print_rdf_nodot (int *) ;
 int printf (char*) ;

__attribute__((used)) static bool
query(ldns_resolver *res, ldns_rdf *domain, ldns_pkt **pkt, bool close_tcp) {
    ldns_status status;
    ldns_pkt_rcode rcode;
    int i, cnt;

    if (o_verbose) {
        printf("Trying \"");
        print_rdf_nodot(domain);
        printf("\"\n");
    }
    for (cnt = ldns_resolver_nameserver_count(res), i = 0; i < cnt; i++) {
        status = ldns_resolver_send_to(pkt, res, domain, o_rrtype,
            o_rrclass, o_recursive ? LDNS_RD : 0, o_ixfr_serial, i,
            close_tcp);
        if (status != LDNS_STATUS_OK) {
            *pkt = ((void*)0);
            continue;
        }
        if (ldns_pkt_tc(*pkt) && !ldns_resolver_usevc(res)) {
            if (o_verbose)
                printf(";; Truncated, retrying in TCP mode.\n");
            ldns_resolver_set_usevc(res, 1);
            status = ldns_resolver_send_to(pkt, res, domain, o_rrtype,
                o_rrclass, o_recursive ? LDNS_RD : 0, o_ixfr_serial, i,
                close_tcp);
            ldns_resolver_set_usevc(res, 0);
            if (status != LDNS_STATUS_OK)
                continue;
        }
        rcode = ldns_pkt_get_rcode(*pkt);
        if (o_ignore_servfail && rcode == LDNS_RCODE_SERVFAIL && cnt > 1)
            continue;
        return rcode == LDNS_RCODE_NOERROR;
    }
    if (*pkt == ((void*)0)) {
        printf(";; connection timed out; no servers could be reached\n");
        exit(1);
    }
    return 0;
}
