
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct forces_tlv {int type; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int *) ;
 scalar_t__ F_TLV_SPAD ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct forces_tlv const) ;
 scalar_t__ TLV_DATA (struct forces_tlv const*) ;
 scalar_t__ TLV_HDRL ;
 int sdatailv_print (int *,int const*,scalar_t__,scalar_t__,int) ;
 int tstr ;

__attribute__((used)) static int
sdatatlv_print(netdissect_options *ndo,
               register const u_char * pptr, register u_int len,
               uint16_t op_msk, int indent)
{
 const struct forces_tlv *tlv = (const struct forces_tlv *)pptr;
 u_int rlen;
 register const u_char *tdp = (const u_char *) TLV_DATA(tlv);
 uint16_t type;





 rlen = len - TLV_HDRL;
 ND_TCHECK(*tlv);
 type = EXTRACT_16BITS(&tlv->type);
 if (type != F_TLV_SPAD) {
  ND_PRINT((ndo, "Error: expecting SPARSEDATA!\n"));
  return -1;
 }

 return sdatailv_print(ndo, tdp, rlen, op_msk, indent);

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
