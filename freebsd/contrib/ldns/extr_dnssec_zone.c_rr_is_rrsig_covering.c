
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ ldns_rdf2rr_type (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_rrsig_typecovered (int *) ;

__attribute__((used)) static bool
rr_is_rrsig_covering(ldns_rr* rr, ldns_rr_type t)
{
 return ldns_rr_get_type(rr) == LDNS_RR_TYPE_RRSIG
  && ldns_rdf2rr_type(ldns_rr_rrsig_typecovered(rr)) == t;
}
