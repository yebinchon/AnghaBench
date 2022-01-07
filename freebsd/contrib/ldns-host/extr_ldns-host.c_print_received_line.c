
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_pkt ;


 int free (char*) ;
 int ldns_pkt_answerfrom (int *) ;
 int ldns_pkt_querytime (int *) ;
 int ldns_pkt_size (int *) ;
 char* ldns_rdf2str (int ) ;
 int ldns_resolver_port (int *) ;
 int printf (char*,int ,char*,int ,int ) ;

__attribute__((used)) static void
print_received_line(ldns_resolver *res, ldns_pkt *pkt) {
    char *from = ldns_rdf2str(ldns_pkt_answerfrom(pkt));

    printf("Received %zu bytes from %s#%d in %d ms\n",
            ldns_pkt_size(pkt), from, ldns_resolver_port(res),
            ldns_pkt_querytime(pkt));
    free(from);
}
