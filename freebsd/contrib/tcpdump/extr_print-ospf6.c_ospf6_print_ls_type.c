
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int rtrid_t ;
typedef int netdissect_options ;


 int LS_SCOPE_MASK ;
 int LS_TYPE_MASK ;
 int ND_PRINT (int *) ;
 int ipaddr_string (int *,int const*) ;
 int ospf6_ls_scope_values ;
 int ospf6_lsa_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
ospf6_print_ls_type(netdissect_options *ndo,
                    register u_int ls_type, register const rtrid_t *ls_stateid)
{
        ND_PRINT((ndo, "\n\t    %s LSA (%d), %s Scope%s, LSA-ID %s",
               tok2str(ospf6_lsa_values, "Unknown", ls_type & LS_TYPE_MASK),
               ls_type & LS_TYPE_MASK,
               tok2str(ospf6_ls_scope_values, "Unknown", ls_type & LS_SCOPE_MASK),
               ls_type &0x8000 ? ", transitive" : "",
               ipaddr_string(ndo, ls_stateid)));
}
