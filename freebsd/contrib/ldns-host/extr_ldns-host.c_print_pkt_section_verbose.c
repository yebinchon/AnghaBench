
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;


 int ldns_rr_list_rr (int *,int) ;
 int ldns_rr_list_rr_count (int *) ;
 int print_rr_verbose (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_pkt_section_verbose(const char *name, ldns_rr_list *rrlist) {
    int i, cnt = ldns_rr_list_rr_count(rrlist);

    if (cnt == 0)
        return;
    printf(";; %s SECTION:\n", name);
    for (i = 0; i < cnt; i++)
        print_rr_verbose(ldns_rr_list_rr(rrlist, i));
    printf("\n");
}
