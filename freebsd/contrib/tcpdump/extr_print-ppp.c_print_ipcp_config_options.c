
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;




 int IPCPOPT_IPCOMP_MINLEN ;





 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_16BITS (int const*) ;

 int ipaddr_string (TYPE_1__*,int const*) ;
 int ipcpopt_compproto_subopt_values ;
 int ipcpopt_compproto_values ;
 int ipcpopt_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
print_ipcp_config_options(netdissect_options *ndo,
                          const u_char *p, int length)
{
 int len, opt;
        u_int compproto, ipcomp_subopttotallen, ipcomp_subopt, ipcomp_suboptlen;

 if (length < 2)
  return 0;
 ND_TCHECK2(*p, 2);
 len = p[1];
 opt = p[0];
 if (length < len)
  return 0;
 if (len < 2) {
  ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
         tok2str(ipcpopt_values,"unknown",opt),
         opt,
         len));
  return 0;
 }

 ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u",
        tok2str(ipcpopt_values,"unknown",opt),
        opt,
        len));

 switch (opt) {
 case 137:
  if (len != 10) {
   ND_PRINT((ndo, " (length bogus, should be = 10)"));
   return len;
  }
  ND_TCHECK2(*(p + 6), 4);
  ND_PRINT((ndo, ": src %s, dst %s",
         ipaddr_string(ndo, p + 2),
         ipaddr_string(ndo, p + 6)));
  break;
 case 135:
  if (len < 4) {
   ND_PRINT((ndo, " (length bogus, should be >= 4)"));
   return 0;
  }
  ND_TCHECK_16BITS(p+2);
  compproto = EXTRACT_16BITS(p+2);

  ND_PRINT((ndo, ": %s (0x%02x):",
            tok2str(ipcpopt_compproto_values, "Unknown", compproto),
            compproto));

  switch (compproto) {
                case 128:

                        break;
                case 134:
                        if (len < IPCPOPT_IPCOMP_MINLEN) {
                         ND_PRINT((ndo, " (length bogus, should be >= %u)",
                          IPCPOPT_IPCOMP_MINLEN));
                         return 0;
                        }

                        ND_TCHECK2(*(p + 2), IPCPOPT_IPCOMP_MINLEN);
                        ND_PRINT((ndo, "\n\t    TCP Space %u, non-TCP Space %u" ", maxPeriod %u, maxTime %u, maxHdr %u",

                               EXTRACT_16BITS(p+4),
                               EXTRACT_16BITS(p+6),
                               EXTRACT_16BITS(p+8),
                               EXTRACT_16BITS(p+10),
                               EXTRACT_16BITS(p+12)));


                        if (len > IPCPOPT_IPCOMP_MINLEN) {
                                ipcomp_subopttotallen = len - IPCPOPT_IPCOMP_MINLEN;
                                p += IPCPOPT_IPCOMP_MINLEN;

                                ND_PRINT((ndo, "\n\t      Suboptions, length %u", ipcomp_subopttotallen));

                                while (ipcomp_subopttotallen >= 2) {
                                        ND_TCHECK2(*p, 2);
                                        ipcomp_subopt = *p;
                                        ipcomp_suboptlen = *(p+1);


                                        if (ipcomp_subopt == 0 ||
                                            ipcomp_suboptlen == 0 )
                                                break;


                                        ND_PRINT((ndo, "\n\t\t%s Suboption #%u, length %u",
                                               tok2str(ipcpopt_compproto_subopt_values,
                                                       "Unknown",
                                                       ipcomp_subopt),
                                               ipcomp_subopt,
                                               ipcomp_suboptlen));

                                        ipcomp_subopttotallen -= ipcomp_suboptlen;
                                        p += ipcomp_suboptlen;
                                }
                        }
                        break;
                default:
                        break;
  }
  break;

 case 136:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  if (len != 6) {
   ND_PRINT((ndo, " (length bogus, should be = 6)"));
   return 0;
  }
  ND_TCHECK2(*(p + 2), 4);
  ND_PRINT((ndo, ": %s", ipaddr_string(ndo, p + 2)));
  break;
 default:




  if (ndo->ndo_vflag < 2)
   print_unknown_data(ndo, &p[2], "\n\t    ", len - 2);
  break;
 }
 if (ndo->ndo_vflag > 1)
  print_unknown_data(ndo, &p[2], "\n\t    ", len - 2);
 return len;

trunc:
 ND_PRINT((ndo, "[|ipcp]"));
 return 0;
}
