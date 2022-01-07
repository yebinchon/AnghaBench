
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int const u_char ;
struct TYPE_6__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int print_smb (TYPE_1__*,int const*,int const*) ;
 int smb_fdata (TYPE_1__*,int const*,char*,int const*,int ) ;
 int const* startbuf ;

void
ipx_netbios_print(netdissect_options *ndo,
                  const u_char *data, u_int length)
{




    int i;
    const u_char *maxbuf;

    maxbuf = data + length;

    if (maxbuf > ndo->ndo_snapend)
 maxbuf = ndo->ndo_snapend;
    startbuf = data;
    for (i = 0; i < 128; i++) {
 if (&data[i + 4] > maxbuf)
     break;
 if (memcmp(&data[i], "\377SMB", 4) == 0) {
     smb_fdata(ndo, data, "\n>>> IPX transport ", &data[i], 0);
     print_smb(ndo, &data[i], maxbuf);
     ND_PRINT((ndo, "\n"));
     break;
 }
    }
    if (i == 128)
 smb_fdata(ndo, data, "\n>>> Unknown IPX ", maxbuf, 0);
}
