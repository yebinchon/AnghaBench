
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 int LDNS_RR_TYPE_AXFR ;
 int LDNS_RR_TYPE_IXFR ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ M_AXFR ;
 scalar_t__ M_IXFR ;
 int ldns_pkt_answer (int *) ;
 int ldns_pkt_answerfrom (int *) ;
 int ldns_pkt_filter_answer (int *,int ) ;
 int ldns_pkt_free (int *) ;
 scalar_t__ ldns_pkt_get_rcode (int *) ;
 int ldns_pkt_set_answerfrom (int *,int ) ;
 int ldns_rdf_clone (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_clone (int ) ;
 int ldns_rr_list_free (int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 scalar_t__ ldns_rr_soa_get_serial (int *) ;
 int ldns_tcp_close (int *) ;
 scalar_t__ ldns_tcp_read (int **,int *) ;
 scalar_t__ o_ixfr_serial ;
 scalar_t__ o_mode ;
 int o_rrtype ;
 int printf (char*) ;
 int report (int *,int *,int *) ;
 int * search (int *,int *,int **,int,int) ;

__attribute__((used)) static bool
dozonetransfer(ldns_resolver *res, ldns_rdf *domain, bool absolute) {
    ldns_pkt *pkt, *nextpkt;
    ldns_rdf *dname;
    ldns_rr_type rrtype;
    ldns_rr_list *rrl;
    ldns_rr *rr;
    size_t i, nsoa = 0;
    uint32_t first_serial = 0;

    rrtype = o_rrtype;
    o_rrtype = (o_mode == M_AXFR) ? LDNS_RR_TYPE_AXFR : LDNS_RR_TYPE_IXFR;
    dname = search(res, domain, &pkt, absolute, 0);

    for (;;) {
        rrl = ldns_rr_list_clone(ldns_pkt_answer(pkt));
        ldns_pkt_filter_answer(pkt, rrtype);
        report(res, dname != ((void*)0) ? dname : domain, pkt);
        if ((dname == ((void*)0)) ||
                (ldns_pkt_get_rcode(pkt) != LDNS_RCODE_NOERROR)) {
            printf("; Transfer failed.\n");
            ldns_tcp_close(res);
            return 0;
        }
        for (i = 0; i < ldns_rr_list_rr_count(rrl); i++) {
            rr = ldns_rr_list_rr(rrl, i);
            if (nsoa == 0) {
                if (ldns_rr_get_type(rr) != LDNS_RR_TYPE_SOA) {
                    printf("; Transfer failed. "
                           "Didn't start with SOA answer.\n");
                    ldns_tcp_close(res);
                    return 0;
                }
                first_serial = ldns_rr_soa_get_serial(rr);
                if ((o_mode == M_IXFR) && (first_serial <= o_ixfr_serial)) {
                    ldns_tcp_close(res);
                    return 1;
                }
            }
            if (ldns_rr_get_type(rr) == LDNS_RR_TYPE_SOA) {
                nsoa = nsoa < 2 ? nsoa + 1 : 1;
                if ((nsoa == 2) &&
                        (ldns_rr_soa_get_serial(rr) == first_serial)) {
                    ldns_tcp_close(res);
                    return 1;
                }
            }
        }
        if (ldns_tcp_read(&nextpkt, res) != LDNS_STATUS_OK) {
            printf("; Transfer failed.\n");
            return 0;
        }
        ldns_pkt_set_answerfrom(nextpkt,
                ldns_rdf_clone(ldns_pkt_answerfrom(pkt)));
        ldns_pkt_free(pkt);
        ldns_rr_list_free(rrl);
        pkt = nextpkt;
    }
}
