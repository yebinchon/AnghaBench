
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_SECTION_ANY_NOQUESTION ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_new () ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 scalar_t__ ldns_resolver_send (int **,int *,int *,int ,int ,int ) ;

ldns_rr_list *
get_rr(ldns_resolver *res, ldns_rdf *zname, ldns_rr_type t, ldns_rr_class c)
{

 ldns_pkt *p;
 ldns_rr_list *found;

 p = ldns_pkt_new();
 found = ((void*)0);

 if (ldns_resolver_send(&p, res, zname, t, c, 0) == LDNS_STATUS_OK) {
  found = ldns_pkt_rr_list_by_type(p, t, LDNS_SECTION_ANY_NOQUESTION);
 }
 ldns_pkt_free(p);
 return found;
}
