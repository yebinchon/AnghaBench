
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct pfsync_header {int dummy; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 scalar_t__ PFSYNC_HDRLEN ;
 int pfsync_print (int *,struct pfsync_header*,int const*,scalar_t__) ;

void
pfsync_ip_print(netdissect_options *ndo , const u_char *bp, u_int len)
{
 struct pfsync_header *hdr = (struct pfsync_header *)bp;

 if (len < PFSYNC_HDRLEN)
  ND_PRINT((ndo, "[|pfsync]"));
 else
  pfsync_print(ndo, hdr, bp + sizeof(struct pfsync_header),
      len - sizeof(struct pfsync_header));
}
