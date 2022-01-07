
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int ldns_rr_get_class (int *) ;
 int ldns_rr_get_type (int *) ;
 int ldns_rr_is_question (int *) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rd_count (int *) ;
 int ldns_rr_rdf (int *,int) ;
 int ldns_rr_ttl (int *) ;
 scalar_t__ print_padding (int,int) ;
 int print_rdf (int ) ;
 scalar_t__ print_rr_class (int ) ;
 scalar_t__ print_rr_type (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_rr_verbose(ldns_rr *rr) {
    bool isq = ldns_rr_is_question(rr);
    int rdcnt = ldns_rr_rd_count(rr);
    int i, n;


    n = isq ? printf(";") : 0;
    n = print_rdf(ldns_rr_owner(rr));
    if (!isq) {
        n += print_padding(n, 24);
        n += printf("%d", ldns_rr_ttl(rr));
    }
    n += print_padding(n, 32);
    n += print_rr_class(ldns_rr_get_class(rr));
    n += print_padding(n, 40);
    n += print_rr_type(ldns_rr_get_type(rr));
    for (i = 0; i < rdcnt; i++) {
        if (i == 0) print_padding(n, 48);
        else printf(" ");
        print_rdf(ldns_rr_rdf(rr, i));
    }
    printf("\n");
}
