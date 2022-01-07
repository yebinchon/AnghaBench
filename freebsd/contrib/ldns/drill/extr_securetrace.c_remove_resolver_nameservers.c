
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_rdf ;


 int ldns_rdf_deep_free (int *) ;
 int * ldns_resolver_pop_nameserver (int *) ;

__attribute__((used)) static void
remove_resolver_nameservers(ldns_resolver *res)
{
 ldns_rdf *pop;


 while((pop = ldns_resolver_pop_nameserver(res))) {
  ldns_rdf_deep_free(pop);
 }

}
