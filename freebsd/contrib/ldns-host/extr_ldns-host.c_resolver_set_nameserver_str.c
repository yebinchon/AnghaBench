
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_STATUS_OK ;
 int die (int,char*) ;
 int * ldns_rdf_new_addr_frm_str (char const*) ;
 scalar_t__ ldns_resolver_push_nameserver (int *,int *) ;
 int ldns_resolver_remove_nameservers (int *) ;
 int resolver_set_nameserver_hostname (int *,char const*) ;

__attribute__((used)) static void
resolver_set_nameserver_str(ldns_resolver *res, const char *server) {
    ldns_rdf *addr;

    ldns_resolver_remove_nameservers(res);
    addr = ldns_rdf_new_addr_frm_str(server);
    if (addr) {
        if (ldns_resolver_push_nameserver(res, addr) != LDNS_STATUS_OK)
            die(1, "couldn't push a nameserver address");
    } else
        resolver_set_nameserver_hostname(res, server);
}
