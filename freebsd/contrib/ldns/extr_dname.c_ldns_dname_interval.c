
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int assert (int) ;
 int ldns_dname_compare (int const*,int const*) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;

int
ldns_dname_interval(const ldns_rdf *prev, const ldns_rdf *middle,
  const ldns_rdf *next)
{
 int prev_check, next_check;

 assert(ldns_rdf_get_type(prev) == LDNS_RDF_TYPE_DNAME);
 assert(ldns_rdf_get_type(middle) == LDNS_RDF_TYPE_DNAME);
 assert(ldns_rdf_get_type(next) == LDNS_RDF_TYPE_DNAME);

 prev_check = ldns_dname_compare(prev, middle);
 next_check = ldns_dname_compare(middle, next);



 if (next_check == 0) {
  return 0;
 }


 if ((prev_check == -1 || prev_check == 0) &&

   next_check == -1) {
  return -1;
 } else {
  return 1;
 }
}
