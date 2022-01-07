
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 scalar_t__ ldns_dname_label_count (int const*) ;
 char* ldns_rdf_data (int const*) ;

int
ldns_dname_is_wildcard(const ldns_rdf* dname)
{
 return ( ldns_dname_label_count(dname) > 0 &&
   ldns_rdf_data(dname)[0] == 1 &&
   ldns_rdf_data(dname)[1] == '*');
}
