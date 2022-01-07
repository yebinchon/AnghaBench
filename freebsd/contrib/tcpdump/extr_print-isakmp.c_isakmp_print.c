
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct isakmp {int vers; int r_ck; int i_ck; int msgid; } ;
struct TYPE_8__ {int ndo_vflag; int * ndo_snapend; scalar_t__ ndo_espsecret; int * ndo_sa_list_head; } ;
typedef TYPE_1__ netdissect_options ;
typedef int base ;




 int ISAKMP_VERS_MAJOR ;
 int ISAKMP_VERS_MAJOR_SHIFT ;
 int ISAKMP_VERS_MINOR ;
 int ISAKMP_VERS_MINOR_SHIFT ;
 int ND_PRINT (TYPE_1__*) ;
 int UNALIGNED_MEMCPY (struct isakmp*,struct isakmp const*,int) ;
 int esp_print_decodesecret (TYPE_1__*) ;
 int hexprint (TYPE_1__*,int const*,int) ;
 int ikev1_print (TYPE_1__*,int const*,int ,int const*,struct isakmp*) ;
 int ikev2_print (TYPE_1__*,int const*,int ,int const*,struct isakmp*) ;

void
isakmp_print(netdissect_options *ndo,
      const u_char *bp, u_int length,
      const u_char *bp2)
{
 const struct isakmp *p;
 struct isakmp base;
 const u_char *ep;
 int major, minor;
 p = (const struct isakmp *)bp;
 ep = ndo->ndo_snapend;

 if ((const struct isakmp *)ep < p + 1) {
  ND_PRINT((ndo,"[|isakmp]"));
  return;
 }

 UNALIGNED_MEMCPY(&base, p, sizeof(base));

 ND_PRINT((ndo,"isakmp"));
 major = (base.vers & ISAKMP_VERS_MAJOR)
  >> ISAKMP_VERS_MAJOR_SHIFT;
 minor = (base.vers & ISAKMP_VERS_MINOR)
  >> ISAKMP_VERS_MINOR_SHIFT;

 if (ndo->ndo_vflag) {
  ND_PRINT((ndo," %d.%d", major, minor));
 }

 if (ndo->ndo_vflag) {
  ND_PRINT((ndo," msgid "));
  hexprint(ndo, (const uint8_t *)&base.msgid, sizeof(base.msgid));
 }

 if (1 < ndo->ndo_vflag) {
  ND_PRINT((ndo," cookie "));
  hexprint(ndo, (const uint8_t *)&base.i_ck, sizeof(base.i_ck));
  ND_PRINT((ndo,"->"));
  hexprint(ndo, (const uint8_t *)&base.r_ck, sizeof(base.r_ck));
 }
 ND_PRINT((ndo,":"));

 switch(major) {
 case 129:
  ikev1_print(ndo, bp, length, bp2, &base);
  break;

 case 128:
  ikev2_print(ndo, bp, length, bp2, &base);
  break;
 }
}
