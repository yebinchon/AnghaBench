
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_MX ;
 scalar_t__ M_DEFAULT_Q ;
 int doquery_filtered (int *,int *) ;
 scalar_t__ o_mode ;
 scalar_t__ o_rrtype ;
 int report (int *,int *,int *) ;
 int * search (int *,int *,int **,int,int) ;

__attribute__((used)) static bool
dosearch(ldns_resolver *res, ldns_rdf *domain, bool absolute) {
    ldns_pkt *pkt;
    ldns_rdf *dname;

    dname = search(res, domain, &pkt, absolute, 1);
    report(res, dname != ((void*)0) ? dname : domain, pkt);
    return o_mode != M_DEFAULT_Q ? (dname != ((void*)0)) :
        (dname != ((void*)0)) &&
        (o_rrtype = LDNS_RR_TYPE_AAAA, doquery_filtered(res, dname)) &&
        (o_rrtype = LDNS_RR_TYPE_MX, doquery_filtered(res, dname));
}
