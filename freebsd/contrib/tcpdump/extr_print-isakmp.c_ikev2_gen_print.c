
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_char ;
struct isakmp_gen {int len; int critical; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int e ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct isakmp_gen const) ;
 int NPSTR (int ) ;
 int UNALIGNED_MEMCPY (struct isakmp_gen*,struct isakmp_gen const*,int) ;
 int ikev2_pay_print (TYPE_1__*,int ,int ) ;
 int ntohs (int ) ;
 int rawprint (TYPE_1__*,int const*,int) ;

__attribute__((used)) static const u_char *
ikev2_gen_print(netdissect_options *ndo, u_char tpay,
  const struct isakmp_gen *ext)
{
 struct isakmp_gen e;

 ND_TCHECK(*ext);
 UNALIGNED_MEMCPY(&e, ext, sizeof(e));
 ikev2_pay_print(ndo, NPSTR(tpay), e.critical);

 ND_PRINT((ndo," len=%d", ntohs(e.len) - 4));
 if (2 < ndo->ndo_vflag && 4 < ntohs(e.len)) {

  ND_PRINT((ndo," "));
  if (!rawprint(ndo, (const uint8_t *)(ext + 1), ntohs(e.len) - 4))
   goto trunc;
 }
 return (const u_char *)ext + ntohs(e.len);
trunc:
 ND_PRINT((ndo," [|%s]", NPSTR(tpay)));
 return ((void*)0);
}
