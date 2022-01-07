
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct pdata_ops {scalar_t__ v; int (* print ) (TYPE_1__*,int const*,scalar_t__,scalar_t__,int) ;int op_msk; int s; } ;
struct forces_tlv {int length; int type; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ B_APPND ;
 scalar_t__ B_KEYIN ;
 scalar_t__ B_TRNG ;
 int EXTRACT_16BITS (int *) ;
 int EXTRACT_32BITS (int const*) ;
 scalar_t__ F_ALN_LEN (int) ;
 scalar_t__ F_TLV_PDAT ;
 int ForCES_TLV_err ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct forces_tlv const) ;
 int ND_TCHECK2 (int const,int) ;
 scalar_t__ PTH_DESC_SIZE ;
 scalar_t__ TLV_HDRL ;
 int chk_op_type (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 struct pdata_ops* get_forces_pd (scalar_t__) ;
 int hex_print_with_offset (TYPE_1__*,char*,int const*,scalar_t__,int ) ;
 char* indent_pr (int,int ) ;
 scalar_t__ pd_valid (scalar_t__) ;
 int stub1 (TYPE_1__*,int const*,scalar_t__,scalar_t__,int) ;
 scalar_t__ tlv_valid (struct forces_tlv const*,scalar_t__) ;
 int tok2str (int ,int *,scalar_t__) ;
 int tstr ;

__attribute__((used)) static int
pdatacnt_print(netdissect_options *ndo,
               register const u_char * pptr, register u_int len,
               uint16_t IDcnt, uint16_t op_msk, int indent)
{
 u_int i;
 uint32_t id;
 char *ib = indent_pr(indent, 0);

 if ((op_msk & B_APPND) && ndo->ndo_vflag >= 3) {
  ND_PRINT((ndo, "%sTABLE APPEND\n", ib));
 }
 for (i = 0; i < IDcnt; i++) {
  ND_TCHECK2(*pptr, 4);
  if (len < 4)
   goto trunc;
  id = EXTRACT_32BITS(pptr);
  if (ndo->ndo_vflag >= 3)
   ND_PRINT((ndo, "%sID#%02u: %d\n", ib, i + 1, id));
  len -= 4;
  pptr += 4;
 }

 if ((op_msk & B_TRNG) || (op_msk & B_KEYIN)) {
  if (op_msk & B_TRNG) {
   uint32_t starti, endi;

   if (len < PTH_DESC_SIZE) {
    ND_PRINT((ndo, "pathlength %d with key/range too short %d\n",
           len, PTH_DESC_SIZE));
    return -1;
   }

   pptr += sizeof(struct forces_tlv);
   len -= sizeof(struct forces_tlv);

   starti = EXTRACT_32BITS(pptr);
   pptr += 4;
   len -= 4;

   endi = EXTRACT_32BITS(pptr);
   pptr += 4;
   len -= 4;

   if (ndo->ndo_vflag >= 3)
    ND_PRINT((ndo, "%sTable range: [%d,%d]\n", ib, starti, endi));
  }

  if (op_msk & B_KEYIN) {
   const struct forces_tlv *keytlv;
   uint16_t tll;

   if (len < PTH_DESC_SIZE) {
    ND_PRINT((ndo, "pathlength %d with key/range too short %d\n",
           len, PTH_DESC_SIZE));
    return -1;
   }


   pptr += 4;
   len -= 4;
   keytlv = (const struct forces_tlv *)pptr;

   pptr += sizeof(struct forces_tlv);
   len -= sizeof(struct forces_tlv);

   tll = EXTRACT_16BITS(&keytlv->length);
   if (tll < TLV_HDRL) {
    ND_PRINT((ndo, "key content length %u < %u\n",
     tll, TLV_HDRL));
    return -1;
   }
   tll -= TLV_HDRL;
   if (len < tll) {
    ND_PRINT((ndo, "key content too short\n"));
    return -1;
   }
   pptr += tll;
   len -= tll;
  }

 }

 if (len) {
  const struct forces_tlv *pdtlv = (const struct forces_tlv *)pptr;
  uint16_t type;
  uint16_t tll;
  int pad = 0;
  u_int aln;
  u_int invtlv;

  ND_TCHECK(*pdtlv);
  type = EXTRACT_16BITS(&pdtlv->type);
  invtlv = tlv_valid(pdtlv, len);
  if (invtlv) {
   ND_PRINT((ndo, "%s Outstanding bytes %d for TLV type 0x%x TLV len %d\n",
             tok2str(ForCES_TLV_err, ((void*)0), invtlv), len, type,
             EXTRACT_16BITS(&pdtlv->length)));
   goto pd_err;
  }





  tll = EXTRACT_16BITS(&pdtlv->length) - TLV_HDRL;
  aln = F_ALN_LEN(EXTRACT_16BITS(&pdtlv->length));
  if (aln > EXTRACT_16BITS(&pdtlv->length)) {
   if (aln > len) {
    ND_PRINT((ndo,
              "Invalid padded pathdata TLV type 0x%x len %d missing %d pad bytes\n",
              type, EXTRACT_16BITS(&pdtlv->length), aln - len));
   } else {
    pad = aln - EXTRACT_16BITS(&pdtlv->length);
   }
  }
  if (pd_valid(type)) {
   const struct pdata_ops *ops = get_forces_pd(type);

   if (ndo->ndo_vflag >= 3 && ops->v != F_TLV_PDAT) {
    if (pad)
     ND_PRINT((ndo, "%s  %s (Length %d DataLen %d pad %d Bytes)\n",
               ib, ops->s, EXTRACT_16BITS(&pdtlv->length), tll, pad));
    else
     ND_PRINT((ndo, "%s  %s (Length %d DataLen %d Bytes)\n",
               ib, ops->s, EXTRACT_16BITS(&pdtlv->length), tll));
   }

   chk_op_type(ndo, type, op_msk, ops->op_msk);

   if (ops->print(ndo, (const u_char *)pdtlv,
     tll + pad + TLV_HDRL, op_msk,
     indent + 2) == -1)
    return -1;
   len -= (TLV_HDRL + pad + tll);
  } else {
   ND_PRINT((ndo, "Invalid path data content type 0x%x len %d\n",
          type, EXTRACT_16BITS(&pdtlv->length)));
pd_err:
   if (EXTRACT_16BITS(&pdtlv->length)) {
                                hex_print_with_offset(ndo, "Bad Data val\n\t  [",
            pptr, len, 0);
    ND_PRINT((ndo, "]\n"));

    return -1;
   }
  }
 }
 return len;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
