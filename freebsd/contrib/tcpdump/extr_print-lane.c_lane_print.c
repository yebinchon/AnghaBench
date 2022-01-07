
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct lane_controlhdr {int lec_opcode; int lec_vers; int lec_proto; int lec_header; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (int *) ;
 int ether_print (int *,int const*,int,int,int ,int const*) ;
 int lane_hdr_print ;
 int lecop2str ;
 int tok2str (int ,char*,int) ;

void
lane_print(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen)
{
 const struct lane_controlhdr *lec;

 if (caplen < sizeof(struct lane_controlhdr)) {
  ND_PRINT((ndo, "[|lane]"));
  return;
 }

 lec = (const struct lane_controlhdr *)p;
 if (EXTRACT_16BITS(&lec->lec_header) == 0xff00) {



  ND_PRINT((ndo, "lec: proto %x vers %x %s",
      lec->lec_proto, lec->lec_vers,
      tok2str(lecop2str, "opcode-#%u", EXTRACT_16BITS(&lec->lec_opcode))));
  return;
 }




 length -= 2;
 caplen -= 2;
 p += 2;





 ether_print(ndo, p, length, caplen, lane_hdr_print, p - 2);
}
