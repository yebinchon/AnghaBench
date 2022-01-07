
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct lladdr_info {int addr; int (* addr_string ) (TYPE_1__*,int ) ;} ;
struct TYPE_15__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ETHERTYPE_ATALK ;
 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_24BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int cdp_print (TYPE_1__*,int const*,int,int) ;
 int dtp_print (TYPE_1__*,int const*,int) ;
 int ether_print (TYPE_1__*,int const*,int,int,int *,int *) ;
 int ethertype_print (TYPE_1__*,int,int const*,int,int,struct lladdr_info const*,struct lladdr_info const*) ;
 int ethertype_values ;
 int fddi_print (TYPE_1__*,int const*,int,int) ;
 int oui_to_struct_tok (int) ;
 int oui_values ;
 int stp_print (TYPE_1__*,int const*,int) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int tok2str (int ,char*,int) ;
 int token_print (TYPE_1__*,int const*,int,int) ;
 int udld_print (TYPE_1__*,int const*,int) ;
 int vtp_print (TYPE_1__*,int const*,int) ;

int
snap_print(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen,
 const struct lladdr_info *src, const struct lladdr_info *dst,
 u_int bridge_pad)
{
 uint32_t orgcode;
 register u_short et;
 register int ret;

 ND_TCHECK2(*p, 5);
 if (caplen < 5 || length < 5)
  goto trunc;
 orgcode = EXTRACT_24BITS(p);
 et = EXTRACT_16BITS(p + 3);

 if (ndo->ndo_eflag) {





  ND_PRINT((ndo, "oui %s (0x%06x), %s %s (0x%04x), length %u: ",
       tok2str(oui_values, "Unknown", orgcode),
       orgcode,
       (orgcode == 0x000000 ? "ethertype" : "pid"),
       tok2str(oui_to_struct_tok(orgcode), "Unknown", et),
       et, length - 5));
 }
 p += 5;
 length -= 5;
 caplen -= 5;

 switch (orgcode) {
 case 142:
 case 143:






  ret = ethertype_print(ndo, et, p, length, caplen, src, dst);
  if (ret)
   return (ret);
  break;

 case 145:
  if (et == ETHERTYPE_ATALK) {
   ret = ethertype_print(ndo, et, p, length, caplen, src, dst);
   if (ret)
    return (ret);
  }
  break;

 case 144:
                switch (et) {
                case 140:
                        cdp_print(ndo, p, length, caplen);
                        return (1);
                case 139:
                        dtp_print(ndo, p, length);
                        return (1);
                case 137:
                        udld_print(ndo, p, length);
                        return (1);
                case 135:
                        vtp_print(ndo, p, length);
                        return (1);
                case 138:
                case 136:
                        stp_print(ndo, p, length);
                        return (1);
                default:
                        break;
                }
  break;

 case 141:
  switch (et) {

  case 131:
  case 130:







   ND_TCHECK2(*p, bridge_pad);
   caplen -= bridge_pad;
   length -= bridge_pad;
   p += bridge_pad;




   ether_print(ndo, p, length, caplen, ((void*)0), ((void*)0));
   return (1);

  case 134:
  case 133:
   ND_TCHECK2(*p, bridge_pad);
   caplen -= bridge_pad;
   length -= bridge_pad;
   p += bridge_pad;





   token_print(ndo, p, length, caplen);
   return (1);

  case 129:
  case 128:







   ND_TCHECK2(*p, bridge_pad + 1);
   caplen -= bridge_pad + 1;
   length -= bridge_pad + 1;
   p += bridge_pad + 1;




   fddi_print(ndo, p, length, caplen);
   return (1);

  case 132:
   stp_print(ndo, p, length);
   return (1);
  }
 }
 if (!ndo->ndo_eflag) {




  if (src != ((void*)0) && dst != ((void*)0)) {
   ND_PRINT((ndo, "%s > %s ",
    (src->addr_string)(ndo, src->addr),
    (dst->addr_string)(ndo, dst->addr)));
  }





  if (orgcode == 0x000000) {
   ND_PRINT((ndo, "SNAP, ethertype %s (0x%04x), length %u: ",
        tok2str(ethertype_values, "Unknown", et),
        et, length));
  } else {
   ND_PRINT((ndo, "SNAP, oui %s (0x%06x), pid %s (0x%04x), length %u: ",
        tok2str(oui_values, "Unknown", orgcode),
        orgcode,
        tok2str(oui_to_struct_tok(orgcode), "Unknown", et),
        et, length));
  }
 }
 return (0);

trunc:
 ND_PRINT((ndo, "[|snap]"));
 return (1);
}
