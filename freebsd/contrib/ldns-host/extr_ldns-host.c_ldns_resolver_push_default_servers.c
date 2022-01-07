
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;


 int LDNS_STATUS_OK ;
 int ldns_rdf_deep_free (int *) ;
 int ldns_resolver_push_nameserver (int *,int *) ;
 int ldns_str2rdf_a (int **,char*) ;
 int ldns_str2rdf_aaaa (int **,char*) ;

__attribute__((used)) static ldns_status
ldns_resolver_push_default_servers(ldns_resolver *res) {
    ldns_status status;
    ldns_rdf *addr;

    if ((status = ldns_str2rdf_a(&addr, "127.0.0.1")) != LDNS_STATUS_OK ||
        (status = ldns_resolver_push_nameserver(res, addr)) != LDNS_STATUS_OK)
        return ldns_rdf_deep_free(addr), status;
    ldns_rdf_deep_free(addr);
    if ((status = ldns_str2rdf_aaaa(&addr, "::1")) != LDNS_STATUS_OK ||
        (status = ldns_resolver_push_nameserver(res, addr)) != LDNS_STATUS_OK)
        return ldns_rdf_deep_free(addr), status;
    ldns_rdf_deep_free(addr);
    return LDNS_STATUS_OK;
}
