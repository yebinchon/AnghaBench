
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_24BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int print_smb (TYPE_1__*,int const*,int const*) ;
 int const* startbuf ;
 int tstr ;

void
smb_tcp_print(netdissect_options *ndo,
              const u_char * data, int length)
{
    int caplen;
    u_int smb_len;
    const u_char *maxbuf;

    if (length < 4)
 goto trunc;
    if (ndo->ndo_snapend < data)
 goto trunc;
    caplen = ndo->ndo_snapend - data;
    if (caplen < 4)
 goto trunc;
    maxbuf = data + caplen;
    smb_len = EXTRACT_24BITS(data + 1);
    length -= 4;
    caplen -= 4;

    startbuf = data;
    data += 4;

    if (smb_len >= 4 && caplen >= 4 && memcmp(data,"\377SMB",4) == 0) {
 if ((int)smb_len > caplen) {
     if ((int)smb_len > length)
  ND_PRINT((ndo, " WARNING: Packet is continued in later TCP segments\n"));
     else
  ND_PRINT((ndo, " WARNING: Short packet. Try increasing the snap length by %d\n",
      smb_len - caplen));
 } else
     ND_PRINT((ndo, " "));
 print_smb(ndo, data, maxbuf > data + smb_len ? data + smb_len : maxbuf);
    } else
 ND_PRINT((ndo, " SMB-over-TCP packet:(raw data or continuation?)\n"));
    return;
trunc:
    ND_PRINT((ndo, "%s", tstr));
}
