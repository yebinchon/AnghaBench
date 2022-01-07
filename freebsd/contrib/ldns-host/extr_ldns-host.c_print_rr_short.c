
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;
struct TYPE_3__ {scalar_t__ type; char* text; } ;


 size_t countof (TYPE_1__*) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_owner (int *) ;
 size_t ldns_rr_rd_count (int *) ;
 int ldns_rr_rdf (int *,size_t) ;
 int print_rdf (int ) ;
 int print_rdf_nodot (int ) ;
 int print_rr_type (scalar_t__) ;
 int printf (char*,...) ;
 TYPE_1__* rr_types ;

__attribute__((used)) static void
print_rr_short(ldns_rr *rr) {
    ldns_rr_type type = ldns_rr_get_type(rr);
    size_t i, rdcnt = ldns_rr_rd_count(rr);

    print_rdf_nodot(ldns_rr_owner(rr));
    printf(" ");
    for (i = 0; i < countof(rr_types); i++) {
        if (rr_types[i].type == type) {
            printf("%s", rr_types[i].text);
            goto found;
        }
    }

    printf("has ");
    print_rr_type(type);
    printf(" record");

found:
    for (i = 0; i < rdcnt; i++) {
        printf(" ");
        print_rdf(ldns_rr_rdf(rr, i));
    }
    printf("\n");
}
