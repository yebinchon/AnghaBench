
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct pcap_pkthdr {int caplen; int len; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int fr_print (int *,int const*,int ) ;

u_int
fr_if_print(netdissect_options *ndo,
            const struct pcap_pkthdr *h, register const u_char *p)
{
 register u_int length = h->len;
 register u_int caplen = h->caplen;

        ND_TCHECK2(*p, 4);

        if ((length = fr_print(ndo, p, length)) == 0)
            return (0);
        else
            return length;
 trunc:
        ND_PRINT((ndo, "[|fr]"));
        return caplen;
}
