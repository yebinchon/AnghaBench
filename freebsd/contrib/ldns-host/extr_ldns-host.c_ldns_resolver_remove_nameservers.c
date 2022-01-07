
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;


 int ldns_rdf_deep_free (int ) ;
 scalar_t__ ldns_resolver_nameserver_count (int *) ;
 int ldns_resolver_pop_nameserver (int *) ;

__attribute__((used)) static void
ldns_resolver_remove_nameservers(ldns_resolver *res) {
    while (ldns_resolver_nameserver_count(res) > 0)
        ldns_rdf_deep_free(ldns_resolver_pop_nameserver(res));
}
