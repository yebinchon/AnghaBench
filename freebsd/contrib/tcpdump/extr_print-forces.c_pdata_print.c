
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct pathdata_h {int pIDcnt; int pflags; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int B_APPND ;
 int B_KEYIN ;
 int B_TRNG ;
 int EXTRACT_16BITS (int *) ;
 int F_SELKEY ;
 int F_SELTABRANGE ;
 int F_TABAPPEND ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct pathdata_h const) ;
 int hex_print_with_offset (TYPE_1__*,char*,int const*,int,int ) ;
 char* indent_pr (int,int ) ;
 int pdatacnt_print (TYPE_1__*,int const*,int,int,int,int) ;
 int recpdoptlv_print (TYPE_1__*,int const*,int,int,int) ;
 int tstr ;

__attribute__((used)) static int
pdata_print(netdissect_options *ndo,
            register const u_char * pptr, register u_int len,
            uint16_t op_msk, int indent)
{
 const struct pathdata_h *pdh = (const struct pathdata_h *)pptr;
 char *ib = indent_pr(indent, 0);
 u_int minsize = 0;
 int more_pd = 0;
 uint16_t idcnt = 0;

 ND_TCHECK(*pdh);
 if (len < sizeof(struct pathdata_h))
  goto trunc;
 if (ndo->ndo_vflag >= 3) {
  ND_PRINT((ndo, "\n%sPathdata: Flags 0x%x ID count %d\n",
         ib, EXTRACT_16BITS(&pdh->pflags), EXTRACT_16BITS(&pdh->pIDcnt)));
 }

 if (EXTRACT_16BITS(&pdh->pflags) & F_SELKEY) {
  op_msk |= B_KEYIN;
 }


 if (EXTRACT_16BITS(&pdh->pflags) & F_SELTABRANGE) {
  op_msk |= B_TRNG;
 }

 if (EXTRACT_16BITS(&pdh->pflags) & F_TABAPPEND) {
  op_msk |= B_APPND;
 }

 pptr += sizeof(struct pathdata_h);
 len -= sizeof(struct pathdata_h);
 idcnt = EXTRACT_16BITS(&pdh->pIDcnt);
 minsize = idcnt * 4;
 if (len < minsize) {
  ND_PRINT((ndo, "\t\t\ttruncated IDs expected %uB got %uB\n", minsize,
         len));
  hex_print_with_offset(ndo, "\t\t\tID Data[", pptr, len, 0);
  ND_PRINT((ndo, "]\n"));
  return -1;
 }

 if ((op_msk & B_TRNG) && (op_msk & B_KEYIN)) {
  ND_PRINT((ndo, "\t\t\tIllegal to have both Table ranges and keys\n"));
  return -1;
 }

 more_pd = pdatacnt_print(ndo, pptr, len, idcnt, op_msk, indent);
 if (more_pd > 0) {
  int consumed = len - more_pd;
  pptr += consumed;
  len = more_pd;

  return recpdoptlv_print(ndo, pptr, len, op_msk, indent+1);
 } else
  return 0;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return -1;
}
