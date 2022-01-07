
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint16_t ;
typedef void* u_int ;
typedef int u_char ;
struct forces_tlv {int length; int type; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 void* EXTRACT_16BITS (int *) ;
 int ForCES_TLV ;
 int ForCES_TLV_err ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct forces_tlv const) ;
 scalar_t__ TLV_DATA (struct forces_tlv const*) ;
 void* TLV_HDRL ;
 char* indent_pr (int,int ) ;
 int pdata_print (TYPE_1__*,int const*,int,void*,int) ;
 void* tlv_valid (struct forces_tlv const*,void*) ;
 int tok2str (int ,int *,void*) ;
 int tstr ;
 int ttlv_valid (void*) ;

__attribute__((used)) static int
genoptlv_print(netdissect_options *ndo,
               register const u_char * pptr, register u_int len,
               uint16_t op_msk, int indent)
{
 const struct forces_tlv *pdtlv = (const struct forces_tlv *)pptr;
 uint16_t type;
 int tll;
 u_int invtlv;
 char *ib = indent_pr(indent, 0);

 ND_TCHECK(*pdtlv);
 type = EXTRACT_16BITS(&pdtlv->type);
 tll = EXTRACT_16BITS(&pdtlv->length) - TLV_HDRL;
 invtlv = tlv_valid(pdtlv, len);
 ND_PRINT((ndo, "genoptlvprint - %s TLV type 0x%x len %d\n",
        tok2str(ForCES_TLV, ((void*)0), type), type, EXTRACT_16BITS(&pdtlv->length)));
 if (!invtlv) {





  register const u_char *dp = (const u_char *) TLV_DATA(pdtlv);
  if (!ttlv_valid(type)) {
   ND_PRINT((ndo, "%s TLV type 0x%x len %d\n",
          tok2str(ForCES_TLV_err, ((void*)0), invtlv), type,
          EXTRACT_16BITS(&pdtlv->length)));
   return -1;
  }
  if (ndo->ndo_vflag >= 3)
   ND_PRINT((ndo, "%s%s, length %d (data length %d Bytes)",
          ib, tok2str(ForCES_TLV, ((void*)0), type),
          EXTRACT_16BITS(&pdtlv->length), tll));

  return pdata_print(ndo, dp, tll, op_msk, indent + 1);
 } else {
  ND_PRINT((ndo, "\t\t\tInvalid ForCES TLV type=%x", type));
  return -1;
 }

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
