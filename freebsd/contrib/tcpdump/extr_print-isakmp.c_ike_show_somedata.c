
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int rawprint (int *,int const*,int) ;

__attribute__((used)) static int ike_show_somedata(netdissect_options *ndo,
        const u_char *cp, const u_char *ep)
{

 const u_char *end = ep - 20;
 int elen = 20;
 int len = ep - cp;
 if(len > 10) {
  len = 10;
 }


 if(end < cp + len) {
  end = cp+len;
  elen = ep - end;
 }

 ND_PRINT((ndo," data=("));
 if(!rawprint(ndo, (const uint8_t *)(cp), len)) goto trunc;
 ND_PRINT((ndo, "..."));
 if(elen) {
  if(!rawprint(ndo, (const uint8_t *)(end), elen)) goto trunc;
 }
 ND_PRINT((ndo,")"));
 return 1;

trunc:
 return 0;
}
