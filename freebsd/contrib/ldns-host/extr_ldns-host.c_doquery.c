
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int query (int *,int *,int **,int) ;
 int report (int *,int *,int *) ;

__attribute__((used)) static bool
doquery(ldns_resolver *res, ldns_rdf *domain) {
    ldns_pkt *pkt;
    bool q;

    q = query(res, domain, &pkt, 1);
    report(res, domain, pkt);
    return q;
}
