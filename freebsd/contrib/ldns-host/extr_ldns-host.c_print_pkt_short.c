
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_pkt ;


 int * ldns_pkt_answer (int *) ;
 int ldns_pkt_answerfrom (int *) ;
 int ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int print_rdf (int ) ;
 int print_rr_short (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
print_pkt_short(ldns_pkt *pkt, bool print_rr_server) {
    ldns_rr_list *rrlist = ldns_pkt_answer(pkt);
    size_t i;

    for (i = 0; i < ldns_rr_list_rr_count(rrlist); i++) {
        if (print_rr_server) {
            printf("Nameserver ");
            print_rdf(ldns_pkt_answerfrom(pkt));
            printf(":\n\t");
        }
        print_rr_short(ldns_rr_list_rr(rrlist, i));
    }
}
