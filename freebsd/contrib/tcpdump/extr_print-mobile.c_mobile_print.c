
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_short ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct mobile_ip {int odst; int osrc; int hcheck; int proto; } ;
struct cksum_vec {int len; int const* ptr; } ;
struct TYPE_5__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 scalar_t__ MOBILE_SIZE ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST (struct mobile_ip const) ;
 int OSRC_PRES ;
 scalar_t__ in_cksum (struct cksum_vec*,int) ;
 int ipaddr_string (TYPE_1__*,int *) ;

void
mobile_print(netdissect_options *ndo, const u_char *bp, u_int length)
{
 const struct mobile_ip *mob;
 struct cksum_vec vec[1];
 u_short proto,crc;
 u_char osp =0;

 mob = (const struct mobile_ip *)bp;

 if (length < MOBILE_SIZE || !ND_TTEST(*mob)) {
  ND_PRINT((ndo, "[|mobile]"));
  return;
 }
 ND_PRINT((ndo, "mobile: "));

 proto = EXTRACT_16BITS(&mob->proto);
 crc = EXTRACT_16BITS(&mob->hcheck);
 if (proto & OSRC_PRES) {
  osp=1;
 }

 if (osp) {
  ND_PRINT((ndo, "[S] "));
  if (ndo->ndo_vflag)
   ND_PRINT((ndo, "%s ", ipaddr_string(ndo, &mob->osrc)));
 } else {
  ND_PRINT((ndo, "[] "));
 }
 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, "> %s ", ipaddr_string(ndo, &mob->odst)));
  ND_PRINT((ndo, "(oproto=%d)", proto>>8));
 }
 vec[0].ptr = (const uint8_t *)(const void *)mob;
 vec[0].len = osp ? 12 : 8;
 if (in_cksum(vec, 1)!=0) {
  ND_PRINT((ndo, " (bad checksum %d)", crc));
 }
}
