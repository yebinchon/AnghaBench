
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef size_t u_int ;
typedef scalar_t__ u_char ;
struct TYPE_14__ {scalar_t__ const* ndo_snapend; int ndo_xflag; scalar_t__ ndo_eflag; int ndo_suppress_default_print; } ;
typedef TYPE_1__ netdissect_options ;


 int ETHERTYPE_LEN ;
 int EXTRACT_16BITS (scalar_t__ const*) ;
 scalar_t__ const LLC_UI ;
 int ND_DEFAULTPRINT (scalar_t__ const*,size_t) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (scalar_t__ const) ;
 int ND_TTEST2 (scalar_t__ const,int) ;
 scalar_t__ ethertype_print (TYPE_1__*,int,scalar_t__ const*,size_t,int,int *,int *) ;
 int fr_hdr_print (TYPE_1__*,size_t,size_t,size_t,int *,int) ;
 int frf15_print (TYPE_1__*,scalar_t__ const*,size_t) ;
 int ip6_print (TYPE_1__*,scalar_t__ const*,size_t) ;
 int ip_print (TYPE_1__*,scalar_t__ const*,size_t) ;
 int isoclns_print (TYPE_1__*,scalar_t__ const*,size_t) ;
 int parse_q922_addr (TYPE_1__*,scalar_t__ const*,size_t*,size_t*,int *,size_t) ;
 int ppp_print (TYPE_1__*,scalar_t__ const*,size_t) ;
 int q933_print (TYPE_1__*,scalar_t__ const*,size_t) ;
 int snap_print (TYPE_1__*,scalar_t__ const*,size_t,int,int *,int *,int ) ;

u_int
fr_print(netdissect_options *ndo,
         register const u_char *p, u_int length)
{
 int ret;
 uint16_t extracted_ethertype;
 u_int dlci;
 u_int addr_len;
 uint16_t nlpid;
 u_int hdr_len;
 uint8_t flags[4];

 ret = parse_q922_addr(ndo, p, &dlci, &addr_len, flags, length);
 if (ret == -1)
  goto trunc;
 if (ret == 0) {
  ND_PRINT((ndo, "Q.922, invalid address"));
  return 0;
 }

 ND_TCHECK(p[addr_len]);
 if (length < addr_len + 1)
  goto trunc;

 if (p[addr_len] != LLC_UI && dlci != 0) {





  if (!ND_TTEST2(p[addr_len], 2) || length < addr_len + 2) {

                        ND_PRINT((ndo, "UI %02x! ", p[addr_len]));
                } else {
                        extracted_ethertype = EXTRACT_16BITS(p+addr_len);

                        if (ndo->ndo_eflag)
                                fr_hdr_print(ndo, length, addr_len, dlci,
                                    flags, extracted_ethertype);

                        if (ethertype_print(ndo, extracted_ethertype,
                                            p+addr_len+ETHERTYPE_LEN,
                                            length-addr_len-ETHERTYPE_LEN,
                                            ndo->ndo_snapend-p-addr_len-ETHERTYPE_LEN,
                                            ((void*)0), ((void*)0)) == 0)

                                ND_PRINT((ndo, "UI %02x! ", p[addr_len]));
                        else
                                return addr_len + 2;
                }
        }

 ND_TCHECK(p[addr_len+1]);
 if (length < addr_len + 2)
  goto trunc;

 if (p[addr_len + 1] == 0) {




  if (addr_len != 3)
   ND_PRINT((ndo, "Pad! "));
  hdr_len = addr_len + 1 + 1 + 1 ;
 } else {




  if (addr_len == 3)
   ND_PRINT((ndo, "No pad! "));
  hdr_len = addr_len + 1 + 1 ;
 }

        ND_TCHECK(p[hdr_len - 1]);
 if (length < hdr_len)
  goto trunc;
 nlpid = p[hdr_len - 1];

 if (ndo->ndo_eflag)
  fr_hdr_print(ndo, length, addr_len, dlci, flags, nlpid);
 p += hdr_len;
 length -= hdr_len;

 switch (nlpid) {
 case 134:
         ip_print(ndo, p, length);
  break;

 case 133:
  ip6_print(ndo, p, length);
  break;

 case 136:
 case 135:
 case 132:
  isoclns_print(ndo, p - 1, length + 1);
  break;

 case 128:
  if (snap_print(ndo, p, length, ndo->ndo_snapend - p, ((void*)0), ((void*)0), 0) == 0) {

                        if (!ndo->ndo_eflag)
                            fr_hdr_print(ndo, length + hdr_len, hdr_len,
                                         dlci, flags, nlpid);
   if (!ndo->ndo_suppress_default_print)
    ND_DEFAULTPRINT(p - hdr_len, length + hdr_len);
  }
  break;

        case 129:
  q933_print(ndo, p, length);
  break;

        case 131:
                frf15_print(ndo, p, length);
                break;

        case 130:
                ppp_print(ndo, p, length);
                break;

 default:
  if (!ndo->ndo_eflag)
                    fr_hdr_print(ndo, length + hdr_len, addr_len,
         dlci, flags, nlpid);
  if (!ndo->ndo_xflag)
   ND_DEFAULTPRINT(p, length);
 }

 return hdr_len;

 trunc:
        ND_PRINT((ndo, "[|fr]"));
        return 0;

}
