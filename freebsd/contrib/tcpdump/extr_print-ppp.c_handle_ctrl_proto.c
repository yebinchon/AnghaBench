
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_13__ {int ndo_vflag; int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;
 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_24BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;





 int cpcodes ;
 int fn_printn (TYPE_1__*,int const*,int,int ) ;
 int oui_values ;
 int ppptype2str ;
 int print_bacp_config_options (TYPE_1__*,int const*,int) ;
 int print_ccp_config_options (TYPE_1__*,int const*,int) ;
 int print_ip6cp_config_options (TYPE_1__*,int const*,int) ;
 int print_ipcp_config_options (TYPE_1__*,int const*,int) ;
 int print_lcp_config_options (TYPE_1__*,int const*,int) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int stub1 (TYPE_1__*,int const*,int) ;
 char* tok2str (int ,char*,int) ;

__attribute__((used)) static void
handle_ctrl_proto(netdissect_options *ndo,
                  u_int proto, const u_char *pptr, int length)
{
 const char *typestr;
 u_int code, len;
 int (*pfunc)(netdissect_options *, const u_char *, int);
 int x, j;
        const u_char *tptr;

        tptr=pptr;

        typestr = tok2str(ppptype2str, "unknown ctrl-proto (0x%04x)", proto);
 ND_PRINT((ndo, "%s, ", typestr));

 if (length < 4)
  goto trunc;
 ND_TCHECK2(*tptr, 2);

 code = *tptr++;

 ND_PRINT((ndo, "%s (0x%02x), id %u, length %u",
           tok2str(cpcodes, "Unknown Opcode",code),
           code,
           *tptr++,
           length + 2));

 if (!ndo->ndo_vflag)
  return;

 if (length <= 4)
  return;

 ND_TCHECK2(*tptr, 2);
 len = EXTRACT_16BITS(tptr);
 tptr += 2;

 ND_PRINT((ndo, "\n\tencoded length %u (=Option(s) length %u)", len, len - 4));

 if (ndo->ndo_vflag > 1)
  print_unknown_data(ndo, pptr - 2, "\n\t", 6);


 switch (code) {
 case 133:
  if (length < 11)
   break;
  ND_TCHECK2(*tptr, 4);
  ND_PRINT((ndo, "\n\t  Magic-Num 0x%08x", EXTRACT_32BITS(tptr)));
  tptr += 4;
  ND_TCHECK2(*tptr, 3);
  ND_PRINT((ndo, " Vendor: %s (%u)",
                       tok2str(oui_values,"Unknown",EXTRACT_24BITS(tptr)),
                       EXTRACT_24BITS(tptr)));

  break;
 case 142:
 case 145:
 case 144:
 case 143:
  x = len - 4;
  do {
   switch (proto) {
   case 128:
    pfunc = print_lcp_config_options;
    break;
   case 130:
    pfunc = print_ipcp_config_options;
    break;
   case 129:
    pfunc = print_ip6cp_config_options;
    break;
   case 131:
    pfunc = print_ccp_config_options;
    break;
   case 132:
    pfunc = print_bacp_config_options;
    break;
   default:




    pfunc = ((void*)0);
    break;
   }

   if (pfunc == ((void*)0))
    break;

   if ((j = (*pfunc)(ndo, tptr, len)) == 0)
    break;
   x -= j;
   tptr += j;
  } while (x > 0);
  break;

 case 135:
 case 136:

  break;
 case 146:

  break;
 case 137:
  if (length < 6)
   break;
  ND_TCHECK2(*tptr, 2);
  ND_PRINT((ndo, "\n\t  Rejected %s Protocol (0x%04x)",
         tok2str(ppptype2str,"unknown", EXTRACT_16BITS(tptr)),
         EXTRACT_16BITS(tptr)));

  if (len > 6) {
   ND_PRINT((ndo, "\n\t  Rejected Packet"));
   print_unknown_data(ndo, tptr + 2, "\n\t    ", len - 2);
  }
  break;
 case 140:
 case 139:
 case 141:
  if (length < 8)
   break;
  ND_TCHECK2(*tptr, 4);
  ND_PRINT((ndo, "\n\t  Magic-Num 0x%08x", EXTRACT_32BITS(tptr)));

  if (len > 8) {
   ND_PRINT((ndo, "\n\t  -----trailing data-----"));
   ND_TCHECK2(tptr[4], len - 8);
   print_unknown_data(ndo, tptr + 4, "\n\t  ", len - 8);
  }
  break;
 case 138:
  if (length < 8)
   break;
  ND_TCHECK2(*tptr, 4);
  ND_PRINT((ndo, "\n\t  Magic-Num 0x%08x", EXTRACT_32BITS(tptr)));

  if (len > 8) {
   ND_PRINT((ndo, "\n\t  Message\n\t    "));
   if (fn_printn(ndo, tptr + 4, len - 4, ndo->ndo_snapend))
    goto trunc;
  }
  break;
 case 134:
  if (length < 12)
   break;
  ND_TCHECK2(*tptr, 4);
  ND_PRINT((ndo, "\n\t  Magic-Num 0x%08x", EXTRACT_32BITS(tptr)));
  ND_TCHECK2(*(tptr + 4), 4);
  ND_PRINT((ndo, ", Seconds-Remaining %us", EXTRACT_32BITS(tptr + 4)));

  break;
 default:



  if (ndo->ndo_vflag <= 1)
   print_unknown_data(ndo, pptr - 2, "\n\t  ", length + 2);
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "[|%s]", typestr));
}
