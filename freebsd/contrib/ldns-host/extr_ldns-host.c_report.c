
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef scalar_t__ ldns_pkt_rcode ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ M_SINGLE_Q ;
 int ldns_pkt_answer (int *) ;
 int ldns_pkt_answerfrom (int *) ;
 scalar_t__ ldns_pkt_get_rcode (int *) ;
 int ldns_resolver_port (int *) ;
 scalar_t__ ldns_rr_list_rr_count (int ) ;
 scalar_t__ o_mode ;
 int o_print_pkt_server ;
 int o_print_rr_server ;
 int o_rrtype ;
 char* o_server ;
 scalar_t__ o_verbose ;
 int print_pkt_short (int *,int ) ;
 int print_pkt_verbose (int *) ;
 int print_rcode (scalar_t__) ;
 int print_rdf (int ) ;
 int print_rdf_nodot (int *) ;
 int print_received_line (int *,int *) ;
 int print_rr_type (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
report(ldns_resolver *res, ldns_rdf *domain, ldns_pkt *pkt) {
    ldns_pkt_rcode rcode;

    if (o_print_pkt_server) {
        printf("Using domain server:\nName: %s\nAddress: ", o_server);
        print_rdf(ldns_pkt_answerfrom(pkt));
        printf("#%d\nAliases: \n\n", ldns_resolver_port(res));
        o_print_pkt_server = 0;
    }
    rcode = ldns_pkt_get_rcode(pkt);
    if (rcode != LDNS_RCODE_NOERROR) {
        printf("Host ");
        print_rdf_nodot(domain);
        printf(" not found: %d(", rcode);
        print_rcode(rcode);
        printf(")\n");
    } else {
        if (o_verbose) {
            print_pkt_verbose(pkt);
        } else {
            print_pkt_short(pkt, o_print_rr_server);
            if (o_mode == M_SINGLE_Q &&
                ldns_rr_list_rr_count(ldns_pkt_answer(pkt)) == 0) {
                print_rdf_nodot(domain);
                printf(" has no ");
                print_rr_type(o_rrtype);
                printf(" record\n");
            }
        }
    }
    if (o_verbose)
        print_received_line(res, pkt);
}
