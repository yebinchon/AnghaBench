
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int * ldns_resolver_domain (int *) ;
 int ** ldns_resolver_searchlist (int *) ;
 int ldns_resolver_searchlist_count (int *) ;
 scalar_t__ query (int *,int *,int **,int) ;
 int * safe_dname_cat_clone (int *,int *) ;

__attribute__((used)) static ldns_rdf *
search(ldns_resolver *res, ldns_rdf *domain, ldns_pkt **pkt,
    bool absolute, bool close_tcp) {
    ldns_rdf *dname, **searchlist;
    int i, n;

    if (absolute && query(res, domain, pkt, close_tcp))
        return domain;

    if ((dname = ldns_resolver_domain(res)) != ((void*)0)) {
        dname = safe_dname_cat_clone(domain, dname);
        if (query(res, dname, pkt, close_tcp))
            return dname;
    }

    searchlist = ldns_resolver_searchlist(res);
    n = ldns_resolver_searchlist_count(res);
    for (i = 0; i < n; i++) {
        dname = safe_dname_cat_clone(domain, searchlist[i]);
        if (query(res, dname, pkt, close_tcp))
            return dname;
    }

    if (!absolute && query(res, domain, pkt, close_tcp))
        return domain;

    return ((void*)0);
}
