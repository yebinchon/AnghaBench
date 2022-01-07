
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ldns_status ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int const ldns_rdf ;
typedef int ldns_pkt_section ;
typedef int ldns_pkt ;


 int LDNS_RDF_TYPE_DNAME ;
 int LDNS_RDF_TYPE_INT32 ;
 int LDNS_RDF_TYPE_PERIOD ;
 int LDNS_RR_TYPE_SOA ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_OK ;
 scalar_t__ htonl (scalar_t__) ;
 int ldns_pkt_push_rr (int *,int ,int *) ;
 int const* ldns_rdf_clone (int const*) ;
 int const* ldns_rdf_new_frm_data (int ,int,scalar_t__*) ;
 int ldns_rr_free (int *) ;
 int * ldns_rr_new_frm_type (int ) ;
 int * ldns_rr_rdf (int *,int) ;
 int ldns_rr_set_class (int *,int ) ;
 int ldns_rr_set_owner (int *,int const*) ;
 int ldns_rr_set_rdf (int *,int const*,int) ;
 int ldns_rr_set_ttl (int *,int ) ;

__attribute__((used)) static ldns_status
ldns_pkt_push_rr_soa(ldns_pkt *pkt, ldns_pkt_section sec,
    const ldns_rdf *name, ldns_rr_class c, uint32_t serial) {
    ldns_rdf *rdf;
    ldns_rr *rr;
    uint32_t n;

    if ((rr = ldns_rr_new_frm_type(LDNS_RR_TYPE_SOA)) == ((void*)0))
        return LDNS_STATUS_MEM_ERR;
    ldns_rr_set_class(rr, c);
    ldns_rr_set_owner(rr, ldns_rdf_clone(name));
    ldns_rr_set_ttl(rr, 0);

    n = 0;
    if ((rdf = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_DNAME, 1, &n)) == ((void*)0))
        goto memerr;
    ldns_rr_set_rdf(rr, rdf, 0);
    ldns_rr_set_rdf(rr, ldns_rdf_clone(rdf), 1);

    n = htonl(serial);
    if ((rdf = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_INT32, 4, &n)) == ((void*)0))
        goto memerr;
    ldns_rr_set_rdf(rr, rdf, 2);

    n = 0;
    if ((rdf = ldns_rdf_new_frm_data(LDNS_RDF_TYPE_PERIOD, 4, &n)) == ((void*)0))
        goto memerr;
    ldns_rr_set_rdf(rr, rdf, 3);
    ldns_rr_set_rdf(rr, ldns_rdf_clone(rdf), 4);
    ldns_rr_set_rdf(rr, ldns_rdf_clone(rdf), 5);
    ldns_rr_set_rdf(rr, ldns_rdf_clone(rdf), 6);

    if (ldns_rr_rdf(rr, 1) == ((void*)0) || ldns_rr_rdf(rr, 4) == ((void*)0) ||
        ldns_rr_rdf(rr, 5) == ((void*)0) || ldns_rr_rdf(rr, 6) == ((void*)0) ||
        !ldns_pkt_push_rr(pkt, sec, rr))
        goto memerr;
    return LDNS_STATUS_OK;

memerr:
    ldns_rr_free(rr);
    return LDNS_STATUS_MEM_ERR;
}
