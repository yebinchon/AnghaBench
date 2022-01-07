
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RESOLV_INET ;
 scalar_t__ LDNS_RESOLV_INET6 ;
 int LDNS_RR_CLASS_IN ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_OK ;
 int ** alloca (size_t) ;
 int doquery (int *,int *) ;
 int * ldns_get_rr_list_addr_by_name (int *,int *,int ,int ) ;
 int * ldns_pkt_answer (int *) ;
 scalar_t__ ldns_resolver_ip6 (int *) ;
 scalar_t__ ldns_resolver_push_nameserver_rr (int *,int *) ;
 int ldns_resolver_remove_nameservers (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_ns_nsdname (int *) ;
 int o_print_pkt_server ;
 int o_recursive ;
 int o_rrtype ;
 int * search (int *,int *,int **,int,int) ;

__attribute__((used)) static bool
dosoa(ldns_resolver *res, ldns_rdf *domain, bool absolute) {
    ldns_rr_list *answer, **nsaddrs;
    ldns_rdf *dname, *addr;
    ldns_pkt *pkt;
    ldns_rr *rr;
    size_t i, j, n, cnt;

    if ((dname = search(res, domain, &pkt, absolute, 1)) == ((void*)0))
        return 0;

    answer = ldns_pkt_answer(pkt);
    cnt = ldns_rr_list_rr_count(answer);
    nsaddrs = alloca(cnt*sizeof(*nsaddrs));
    for (n = 0, i = 0; i < cnt; i++)
        if ((addr = ldns_rr_ns_nsdname(ldns_rr_list_rr(answer, i))) != ((void*)0))
            nsaddrs[n++] = ldns_get_rr_list_addr_by_name(res,
                addr, LDNS_RR_CLASS_IN, 0);

    o_print_pkt_server = 0;
    o_recursive = 0;
    o_rrtype = LDNS_RR_TYPE_SOA;
    for (i = 0; i < n; i++) {
        cnt = ldns_rr_list_rr_count(nsaddrs[i]);
        for (j = 0; j < cnt; j++) {
            ldns_resolver_remove_nameservers(res);
            rr = ldns_rr_list_rr(nsaddrs[i], j);
            if ((ldns_resolver_ip6(res) == LDNS_RESOLV_INET &&
                ldns_rr_get_type(rr) == LDNS_RR_TYPE_AAAA) ||
                (ldns_resolver_ip6(res) == LDNS_RESOLV_INET6 &&
                ldns_rr_get_type(rr) == LDNS_RR_TYPE_A))
                continue;
            if (ldns_resolver_push_nameserver_rr(res, rr) == LDNS_STATUS_OK)

                doquery(res, dname);
        }
    }
    return 0;
}
