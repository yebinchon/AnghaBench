
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct krb {int type; } ;
struct TYPE_5__ {int* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;






 scalar_t__ IS_LENDIAN (struct krb const*) ;
 int KTOHSP (struct krb const*,int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int PRINT ;
 int kerr2str ;
 int* krb4_print_hdr (TYPE_1__*,int const*) ;
 int tok2str (int ,int *,int) ;
 int tstr ;
 int type2str ;

__attribute__((used)) static void
krb4_print(netdissect_options *ndo,
           const u_char *cp)
{
 register const struct krb *kp;
 u_char type;
 u_short len;






 kp = (const struct krb *)cp;

 if ((&kp->type) >= ndo->ndo_snapend) {
  ND_PRINT((ndo, "%s", tstr));
  return;
 }

 type = kp->type & (0xFF << 1);

 ND_PRINT((ndo, " %s %s: ",
     (((kp)->type & 0x01) != 0) ? "le" : "be", tok2str(type2str, ((void*)0), type)));

 switch (type) {

 case 128:
  if ((cp = krb4_print_hdr(ndo, cp)) == ((void*)0))
   return;
  cp += 4;
  ND_TCHECK(*cp);
  ND_PRINT((ndo, " %dmin ", *cp++ * 5));
  if ((cp = c_print(ndo, cp, ndo->ndo_snapend)) == ((void*)0)) goto trunc;
  ND_PRINT((ndo, "."));
  if ((cp = c_print(ndo, cp, ndo->ndo_snapend)) == ((void*)0)) goto trunc;
  break;

 case 131:
  cp += 2;
  ND_TCHECK(*cp);
  ND_PRINT((ndo, "v%d ", *cp++));
  if ((cp = c_print(ndo, cp, ndo->ndo_snapend)) == ((void*)0)) goto trunc;
  ND_TCHECK(*cp);
  ND_PRINT((ndo, " (%d)", *cp++));
  ND_TCHECK(*cp);
  ND_PRINT((ndo, " (%d)", *cp));
  break;

 case 129:
  if ((cp = krb4_print_hdr(ndo, cp)) == ((void*)0))
   return;
  cp += 10;
  ND_TCHECK2(*cp, sizeof(short));
  len = ((((kp)->type & 0x01) != 0) ? EXTRACT_LE_16BITS(cp) : EXTRACT_16BITS(cp));
  ND_PRINT((ndo, " (%d)", len));
  break;

 case 130:
  if ((cp = krb4_print_hdr(ndo, cp)) == ((void*)0))
   return;
  cp += 4;
  ND_TCHECK2(*cp, sizeof(short));
  ND_PRINT((ndo, " %s ", tok2str(kerr2str, ((void*)0), ((((kp)->type & 0x01) != 0) ? EXTRACT_LE_16BITS(cp) : EXTRACT_16BITS(cp)))));
  cp += 4;
  if ((cp = c_print(ndo, cp, ndo->ndo_snapend)) == ((void*)0)) goto trunc;
  break;

 default:
  ND_PRINT((ndo, "(unknown)"));
  break;
 }

 return;
trunc:
 ND_PRINT((ndo, "%s", tstr));
}
