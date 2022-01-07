
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int MAXTAGPRINT ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int PPPOE_HDRLEN ;
 int PPPOE_PADI ;
 int ppp_print (int *,int const*,int) ;
 int pppoecode2str ;
 int pppoetag2str ;
 int tok2str (int ,char*,int) ;

u_int
pppoe_print(netdissect_options *ndo, register const u_char *bp, u_int length)
{
 uint16_t pppoe_ver, pppoe_type, pppoe_code, pppoe_sessionid;
 u_int pppoe_length;
 const u_char *pppoe_packet, *pppoe_payload;

 if (length < PPPOE_HDRLEN) {
  ND_PRINT((ndo, "truncated-pppoe %u", length));
  return (length);
 }
 length -= PPPOE_HDRLEN;
 pppoe_packet = bp;
 ND_TCHECK2(*pppoe_packet, PPPOE_HDRLEN);
 pppoe_ver = (pppoe_packet[0] & 0xF0) >> 4;
 pppoe_type = (pppoe_packet[0] & 0x0F);
 pppoe_code = pppoe_packet[1];
 pppoe_sessionid = EXTRACT_16BITS(pppoe_packet + 2);
 pppoe_length = EXTRACT_16BITS(pppoe_packet + 4);
 pppoe_payload = pppoe_packet + PPPOE_HDRLEN;

 if (pppoe_ver != 1) {
  ND_PRINT((ndo, " [ver %d]",pppoe_ver));
 }
 if (pppoe_type != 1) {
  ND_PRINT((ndo, " [type %d]",pppoe_type));
 }

 ND_PRINT((ndo, "PPPoE %s", tok2str(pppoecode2str, "PAD-%x", pppoe_code)));
 if (pppoe_code == PPPOE_PADI && pppoe_length > 1484 - PPPOE_HDRLEN) {
  ND_PRINT((ndo, " [len %u!]",pppoe_length));
 }
 if (pppoe_length > length) {
  ND_PRINT((ndo, " [len %u > %u!]", pppoe_length, length));
  pppoe_length = length;
 }
 if (pppoe_sessionid) {
  ND_PRINT((ndo, " [ses 0x%x]", pppoe_sessionid));
 }

 if (pppoe_code) {

  u_short tag_type = 0xffff, tag_len;
  const u_char *p = pppoe_payload;






  while (tag_type && p < pppoe_payload + pppoe_length) {
   ND_TCHECK2(*p, 4);
   tag_type = EXTRACT_16BITS(p);
   tag_len = EXTRACT_16BITS(p + 2);
   p += 4;


   if (tag_len) {
    unsigned ascii_count = 0, garbage_count = 0;
    const u_char *v;
    char tag_str[MAXTAGPRINT];
    unsigned tag_str_len = 0;


    ND_TCHECK2(*p, tag_len);
    for (v = p; v < p + tag_len && tag_str_len < MAXTAGPRINT-1; v++)
     if (*v >= 32 && *v < 127) {
      tag_str[tag_str_len++] = *v;
      ascii_count++;
     } else {
      tag_str[tag_str_len++] = '.';
      garbage_count++;
     }
    tag_str[tag_str_len] = 0;

    if (ascii_count > garbage_count) {
     ND_PRINT((ndo, " [%s \"%*.*s\"]",
            tok2str(pppoetag2str, "TAG-0x%x", tag_type),
            (int)tag_str_len,
            (int)tag_str_len,
            tag_str));
    } else {

     ND_PRINT((ndo, " [%s 0x", tok2str(pppoetag2str, "TAG-0x%x", tag_type)));
     for (v=p; v<p+tag_len; v++) {
      ND_PRINT((ndo, "%02X", *v));
     }
     ND_PRINT((ndo, "]"));
    }


   } else
    ND_PRINT((ndo, " [%s]", tok2str(pppoetag2str,
        "TAG-0x%x", tag_type)));

   p += tag_len;

  }
  return (0);
 } else {

  ND_PRINT((ndo, " "));
  return (PPPOE_HDRLEN + ppp_print(ndo, pppoe_payload, pppoe_length));
 }

trunc:
 ND_PRINT((ndo, "[|pppoe]"));
 return (PPPOE_HDRLEN);
}
