
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_addr; struct addrinfo* ai_next; int ai_socktype; int ai_family; } ;
typedef scalar_t__ ldns_status ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;


 int EAI_AGAIN ;


 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int die (int,char*,char const*,...) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int ldns_get_errorstr_by_id (scalar_t__) ;
 int ldns_resolver_ip6 (int *) ;
 scalar_t__ ldns_resolver_push_nameserver (int *,int *) ;
 int * ldns_sockaddr_storage2rdf (void*,int *) ;
 int memset (struct addrinfo*,int ,int) ;

__attribute__((used)) static void
resolver_set_nameserver_hostname(ldns_resolver *res, const char *server) {
    struct addrinfo hints, *ailist, *ai;
    ldns_status status;
    ldns_rdf *rdf;
    int err;

    memset(&hints, 0, sizeof hints);
    switch (ldns_resolver_ip6(res)) {
    case 129: hints.ai_family = PF_INET; break;
    case 128: hints.ai_family = PF_INET6; break;
    default: hints.ai_family = PF_UNSPEC; break;
    }
    hints.ai_socktype = SOCK_STREAM;
    do err = getaddrinfo(server, ((void*)0), &hints, &ailist);
    while (err == EAI_AGAIN);
    if (err != 0)
        die(1, "couldn't get address for '%s': %s", server, gai_strerror(err));
    for (ai = ailist; ai != ((void*)0); ai = ai->ai_next) {
        if ((rdf = ldns_sockaddr_storage2rdf((void*)ai->ai_addr, ((void*)0))) == ((void*)0))
            die(1, "couldn't allocate an rdf: %s",
                ldns_get_errorstr_by_id(LDNS_STATUS_MEM_ERR));
        status = ldns_resolver_push_nameserver(res, rdf);
        if (status != LDNS_STATUS_OK)
            die(1, "couldn't push a nameserver address: %s",
                ldns_get_errorstr_by_id(status));
    }
}
