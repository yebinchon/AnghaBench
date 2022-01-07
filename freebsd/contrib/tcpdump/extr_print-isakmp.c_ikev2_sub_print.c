
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct isakmp_gen {int np; int len; } ;
struct isakmp {int dummy; } ;
typedef int netdissect_options ;
typedef int e ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (struct isakmp_gen const) ;
 int ND_TCHECK2 (struct isakmp_gen const,int ) ;
 int NPSTR (int ) ;
 int UNALIGNED_MEMCPY (struct isakmp_gen*,struct isakmp_gen const*,int) ;
 int * ikev2_sub0_print (int *,struct isakmp*,int ,struct isakmp_gen const*,int const*,int ,int ,int ,int) ;
 int ntohs (int ) ;

__attribute__((used)) static const u_char *
ikev2_sub_print(netdissect_options *ndo,
  struct isakmp *base,
  u_char np, const struct isakmp_gen *ext, const u_char *ep,
  uint32_t phase, uint32_t doi, uint32_t proto, int depth)
{
 const u_char *cp;
 int i;
 struct isakmp_gen e;

 cp = (const u_char *)ext;
 while (np) {
  ND_TCHECK(*ext);
  UNALIGNED_MEMCPY(&e, ext, sizeof(e));

  ND_TCHECK2(*ext, ntohs(e.len));

  depth++;
  ND_PRINT((ndo,"\n"));
  for (i = 0; i < depth; i++)
   ND_PRINT((ndo,"    "));
  ND_PRINT((ndo,"("));
  cp = ikev2_sub0_print(ndo, base, np,
          ext, ep, phase, doi, proto, depth);
  ND_PRINT((ndo,")"));
  depth--;

  if (cp == ((void*)0)) {

   return ((void*)0);
  }

  np = e.np;
  ext = (const struct isakmp_gen *)cp;
 }
 return cp;
trunc:
 ND_PRINT((ndo," [|%s]", NPSTR(np)));
 return ((void*)0);
}
