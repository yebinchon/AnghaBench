
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 scalar_t__ ldns_dname_compare (int const*,int const*) ;
 scalar_t__ ldns_dname_is_subdomain (int const*,int *) ;
 scalar_t__ ldns_dname_is_wildcard (int const*) ;
 int * ldns_dname_left_chop (int const*) ;
 int ldns_rdf_deep_free (int *) ;

int
ldns_dname_match_wildcard(const ldns_rdf *dname, const ldns_rdf *wildcard)
{
 ldns_rdf *wc_chopped;
 int result;

 if (ldns_dname_is_wildcard(wildcard)) {



  wc_chopped = ldns_dname_left_chop(wildcard);
  result = (int) ldns_dname_is_subdomain(dname, wc_chopped);
  ldns_rdf_deep_free(wc_chopped);
 } else {
  result = (ldns_dname_compare(dname, wildcard) == 0);
 }
 return result;
}
