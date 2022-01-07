
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_name ;


 int ldns_dname_compare (int ,int ) ;
 int ldns_dnssec_name_name (int *) ;

int
ldns_dnssec_name_cmp(const void *a, const void *b)
{
 ldns_dnssec_name *na = (ldns_dnssec_name *) a;
 ldns_dnssec_name *nb = (ldns_dnssec_name *) b;

 if (na && nb) {
  return ldns_dname_compare(ldns_dnssec_name_name(na),
        ldns_dnssec_name_name(nb));
 } else if (na) {
  return 1;
 } else if (nb) {
  return -1;
 } else {
  return 0;
 }
}
