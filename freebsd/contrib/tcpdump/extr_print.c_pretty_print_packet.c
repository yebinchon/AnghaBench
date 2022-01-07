
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; int ts; } ;
struct TYPE_9__ {scalar_t__ (* ndo_if_printer ) (TYPE_1__*,struct pcap_pkthdr const*,int const*) ;int ndo_Xflag; int ndo_xflag; int ndo_Aflag; int const* ndo_snapend; scalar_t__ ndo_packet_number; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ascii_print (TYPE_1__*,int const*,scalar_t__) ;
 int hex_and_ascii_print (TYPE_1__*,char*,int const*,scalar_t__) ;
 int hex_print (TYPE_1__*,char*,int const*,scalar_t__) ;
 scalar_t__ stub1 (TYPE_1__*,struct pcap_pkthdr const*,int const*) ;
 int ts_print (TYPE_1__*,int *) ;

void
pretty_print_packet(netdissect_options *ndo, const struct pcap_pkthdr *h,
    const u_char *sp, u_int packets_captured)
{
 u_int hdrlen;

 if(ndo->ndo_packet_number)
  ND_PRINT((ndo, "%5u  ", packets_captured));

 ts_print(ndo, &h->ts);







 ndo->ndo_snapend = sp + h->caplen;

        hdrlen = (ndo->ndo_if_printer)(ndo, h, sp);





 ndo->ndo_snapend = sp + h->caplen;
 if (ndo->ndo_Xflag) {



  if (ndo->ndo_Xflag > 1) {



   hex_and_ascii_print(ndo, "\n\t", sp, h->caplen);
  } else {





   if (h->caplen > hdrlen)
    hex_and_ascii_print(ndo, "\n\t", sp + hdrlen,
        h->caplen - hdrlen);
  }
 } else if (ndo->ndo_xflag) {



  if (ndo->ndo_xflag > 1) {



                        hex_print(ndo, "\n\t", sp, h->caplen);
  } else {





   if (h->caplen > hdrlen)
    hex_print(ndo, "\n\t", sp + hdrlen,
                                          h->caplen - hdrlen);
  }
 } else if (ndo->ndo_Aflag) {



  if (ndo->ndo_Aflag > 1) {



   ascii_print(ndo, sp, h->caplen);
  } else {





   if (h->caplen > hdrlen)
    ascii_print(ndo, sp + hdrlen, h->caplen - hdrlen);
  }
 }

 ND_PRINT((ndo, "\n"));
}
