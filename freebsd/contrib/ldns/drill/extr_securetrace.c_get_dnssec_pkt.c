
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_type ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RR_CLASS_IN ;
 int ldns_pkt_print (int ,int *) ;
 int * ldns_resolver_query (int *,int *,int ,int ,int ) ;
 int stdout ;
 int verbosity ;

__attribute__((used)) static ldns_pkt *
get_dnssec_pkt(ldns_resolver *r, ldns_rdf *name, ldns_rr_type t)
{
 ldns_pkt *p = ((void*)0);
 p = ldns_resolver_query(r, name, t, LDNS_RR_CLASS_IN, 0);
 if (!p) {
  return ((void*)0);
 } else {
  if (verbosity >= 5) {
   ldns_pkt_print(stdout, p);
  }
  return p;
 }
}
