
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct lsa6_hdr {int ls_stateid; int ls_type; int ls_length; int ls_age; int ls_seq; int ls_router; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int ipaddr_string (int *,int *) ;
 int ospf6_print_ls_type (int *,scalar_t__,int *) ;

__attribute__((used)) static int
ospf6_print_lshdr(netdissect_options *ndo,
                  register const struct lsa6_hdr *lshp, const u_char *dataend)
{
 if ((const u_char *)(lshp + 1) > dataend)
  goto trunc;
 ND_TCHECK(lshp->ls_type);
 ND_TCHECK(lshp->ls_seq);

 ND_PRINT((ndo, "\n\t  Advertising Router %s, seq 0x%08x, age %us, length %u",
               ipaddr_string(ndo, &lshp->ls_router),
               EXTRACT_32BITS(&lshp->ls_seq),
               EXTRACT_16BITS(&lshp->ls_age),
               EXTRACT_16BITS(&lshp->ls_length)-(u_int)sizeof(struct lsa6_hdr)));

 ospf6_print_ls_type(ndo, EXTRACT_16BITS(&lshp->ls_type), &lshp->ls_stateid);

 return (0);
trunc:
 return (1);
}
