
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;



 int papcode_values ;
 int safeputchar (int *,int ) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
handle_pap(netdissect_options *ndo,
           const u_char *p, int length)
{
 u_int code, len;
 int peerid_len, passwd_len, msg_len;
 const u_char *p0;
 int i;

 p0 = p;
 if (length < 1) {
  ND_PRINT((ndo, "[|pap]"));
  return;
 } else if (length < 4) {
  ND_TCHECK(*p);
  ND_PRINT((ndo, "[|pap 0x%02x]", *p));
  return;
 }

 ND_TCHECK(*p);
 code = *p;
 ND_PRINT((ndo, "PAP, %s (0x%02x)",
           tok2str(papcode_values, "unknown", code),
           code));
 p++;

 ND_TCHECK(*p);
 ND_PRINT((ndo, ", id %u", *p));
 p++;

 ND_TCHECK2(*p, 2);
 len = EXTRACT_16BITS(p);
 p += 2;

 if ((int)len > length) {
  ND_PRINT((ndo, ", length %u > packet size", len));
  return;
 }
 length = len;
 if (length < (p - p0)) {
  ND_PRINT((ndo, ", length %u < PAP header length", length));
  return;
 }

 switch (code) {
 case 128:

  if (len < 6)
   goto trunc;
  if (length - (p - p0) < 1)
   return;
  ND_TCHECK(*p);
  peerid_len = *p;
  p++;
  if (length - (p - p0) < peerid_len)
   return;
  ND_PRINT((ndo, ", Peer "));
  for (i = 0; i < peerid_len; i++) {
   ND_TCHECK(*p);
   safeputchar(ndo, *p++);
  }

  if (length - (p - p0) < 1)
   return;
  ND_TCHECK(*p);
  passwd_len = *p;
  p++;
  if (length - (p - p0) < passwd_len)
   return;
  ND_PRINT((ndo, ", Name "));
  for (i = 0; i < passwd_len; i++) {
   ND_TCHECK(*p);
   safeputchar(ndo, *p++);
  }
  break;
 case 130:
 case 129:





  if (len < 5)
   goto trunc;
  if (length - (p - p0) < 1)
   return;
  ND_TCHECK(*p);
  msg_len = *p;
  p++;
  if (length - (p - p0) < msg_len)
   return;
  ND_PRINT((ndo, ", Msg "));
  for (i = 0; i< msg_len; i++) {
   ND_TCHECK(*p);
   safeputchar(ndo, *p++);
  }
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "[|pap]"));
}
