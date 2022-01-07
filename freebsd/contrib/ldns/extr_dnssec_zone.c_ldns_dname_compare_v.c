
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rdf ;


 int ldns_dname_compare (int *,int *) ;

int
ldns_dname_compare_v(const void *a, const void *b) {
 return ldns_dname_compare((ldns_rdf *)a, (ldns_rdf *)b);
}
