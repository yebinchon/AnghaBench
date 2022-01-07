
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_rdf ;
typedef int ldns_pkt_type ;
typedef int ldns_pkt ;


 int LDNS_RR_TYPE_DS ;
 int get_dnssec_rr (int *,int *,int ,int **,int **) ;

__attribute__((used)) static ldns_pkt_type
get_ds(ldns_pkt *p, ldns_rdf *ownername, ldns_rr_list **rrlist, ldns_rr_list **opt_sig)
{
 return get_dnssec_rr(p, ownername, LDNS_RR_TYPE_DS, rrlist, opt_sig);
}
