
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct aodv_rreq6 {int rreq_type; int rreq_os; int rreq_oa; int rreq_ds; int rreq_da; int rreq_id; int rreq_hops; } ;
struct aodv_ext {int dummy; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct aodv_rreq6 const) ;
 int RREQ_DEST ;
 int RREQ_GRAT ;
 int RREQ_JOIN ;
 int RREQ_REPAIR ;
 int RREQ_UNKNOWN ;
 int aodv_extension (int *,struct aodv_ext const*,int) ;
 int ip6addr_string (int *,int *) ;

__attribute__((used)) static void
aodv_v6_rreq(netdissect_options *ndo, const u_char *dat, u_int length)
{
 u_int i;
 const struct aodv_rreq6 *ap = (const struct aodv_rreq6 *)dat;

 ND_TCHECK(*ap);
 if (length < sizeof(*ap))
  goto trunc;
 ND_PRINT((ndo, " v6 rreq %u %s%s%s%s%shops %u id 0x%08lx\n"
     "\tdst %s seq %lu src %s seq %lu", length,
     ap->rreq_type & RREQ_JOIN ? "[J]" : "",
     ap->rreq_type & RREQ_REPAIR ? "[R]" : "",
     ap->rreq_type & RREQ_GRAT ? "[G]" : "",
     ap->rreq_type & RREQ_DEST ? "[D]" : "",
     ap->rreq_type & RREQ_UNKNOWN ? "[U] " : " ",
     ap->rreq_hops,
     (unsigned long)EXTRACT_32BITS(&ap->rreq_id),
     ip6addr_string(ndo, &ap->rreq_da),
     (unsigned long)EXTRACT_32BITS(&ap->rreq_ds),
     ip6addr_string(ndo, &ap->rreq_oa),
     (unsigned long)EXTRACT_32BITS(&ap->rreq_os)));
 i = length - sizeof(*ap);
 if (i >= sizeof(struct aodv_ext))
  aodv_extension(ndo, (const struct aodv_ext *)(dat + sizeof(*ap)), i);
 return;

trunc:
 ND_PRINT((ndo, " [|rreq"));
}
