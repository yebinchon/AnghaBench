
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct aodv_rrep {int rrep_type; int rrep_ps; int rrep_life; int rrep_oa; int rrep_ds; int rrep_da; int rrep_hops; } ;
struct aodv_ext {int dummy; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct aodv_rrep const) ;
 int RREP_ACK ;
 int RREP_PREFIX_MASK ;
 int RREP_REPAIR ;
 int aodv_extension (int *,struct aodv_ext const*,int) ;
 int ipaddr_string (int *,int *) ;

__attribute__((used)) static void
aodv_rrep(netdissect_options *ndo, const u_char *dat, u_int length)
{
 u_int i;
 const struct aodv_rrep *ap = (const struct aodv_rrep *)dat;

 ND_TCHECK(*ap);
 if (length < sizeof(*ap))
  goto trunc;
 ND_PRINT((ndo, " rrep %u %s%sprefix %u hops %u\n"
     "\tdst %s dseq %lu src %s %lu ms", length,
     ap->rrep_type & RREP_REPAIR ? "[R]" : "",
     ap->rrep_type & RREP_ACK ? "[A] " : " ",
     ap->rrep_ps & RREP_PREFIX_MASK,
     ap->rrep_hops,
     ipaddr_string(ndo, &ap->rrep_da),
     (unsigned long)EXTRACT_32BITS(&ap->rrep_ds),
     ipaddr_string(ndo, &ap->rrep_oa),
     (unsigned long)EXTRACT_32BITS(&ap->rrep_life)));
 i = length - sizeof(*ap);
 if (i >= sizeof(struct aodv_ext))
  aodv_extension(ndo, (const struct aodv_ext *)(dat + sizeof(*ap)), i);
 return;

trunc:
 ND_PRINT((ndo, " [|rreq"));
}
