
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct isakmp_gen {int dummy; } ;
struct isakmp {int flags; int len; int np; int etype; int i_ck; int r_ck; int msgid; } ;
struct TYPE_5__ {scalar_t__ ndo_vflag; int * ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int CHECKLEN (struct isakmp const*,int ) ;
 int ETYPESTR (int ) ;
 scalar_t__ EXTRACT_32BITS (int ) ;
 int ISAKMP_FLAG_C ;
 int ISAKMP_FLAG_E ;
 int ND_PRINT (TYPE_1__*) ;
 int NPSTR (int ) ;
 int cookie_find (int *) ;
 scalar_t__ cookie_isinitiator (int,int const*) ;
 scalar_t__ cookie_isresponder (int,int const*) ;
 int cookie_record (int *,int const*) ;
 int ikev1_sub_print (TYPE_1__*,int ,struct isakmp_gen const*,int const*,int,int ,int ,int ) ;
 scalar_t__ iszero (int const*,int) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static void
ikev1_print(netdissect_options *ndo,
     const u_char *bp, u_int length,
     const u_char *bp2, struct isakmp *base)
{
 const struct isakmp *p;
 const u_char *ep;
 u_char np;
 int i;
 int phase;

 p = (const struct isakmp *)bp;
 ep = ndo->ndo_snapend;

 phase = (EXTRACT_32BITS(base->msgid) == 0) ? 1 : 2;
 if (phase == 1)
  ND_PRINT((ndo," phase %d", phase));
 else
  ND_PRINT((ndo," phase %d/others", phase));

 i = cookie_find(&base->i_ck);
 if (i < 0) {
  if (iszero((const u_char *)&base->r_ck, sizeof(base->r_ck))) {

   ND_PRINT((ndo," I"));
   if (bp2)
    cookie_record(&base->i_ck, bp2);
  } else
   ND_PRINT((ndo," ?"));
 } else {
  if (bp2 && cookie_isinitiator(i, bp2))
   ND_PRINT((ndo," I"));
  else if (bp2 && cookie_isresponder(i, bp2))
   ND_PRINT((ndo," R"));
  else
   ND_PRINT((ndo," ?"));
 }

 ND_PRINT((ndo," %s", ETYPESTR(base->etype)));
 if (base->flags) {
  ND_PRINT((ndo,"[%s%s]", base->flags & ISAKMP_FLAG_E ? "E" : "",
     base->flags & ISAKMP_FLAG_C ? "C" : ""));
 }

 if (ndo->ndo_vflag) {
  const struct isakmp_gen *ext;

  ND_PRINT((ndo,":"));


  if (base->flags & ISAKMP_FLAG_E) {




   ND_PRINT((ndo," [encrypted %s]", NPSTR(base->np)));
   goto done;
  }

  CHECKLEN(p + 1, base->np);
  np = base->np;
  ext = (const struct isakmp_gen *)(p + 1);
  ikev1_sub_print(ndo, np, ext, ep, phase, 0, 0, 0);
 }

done:
 if (ndo->ndo_vflag) {
  if (ntohl(base->len) != length) {
   ND_PRINT((ndo," (len mismatch: isakmp %u/ip %u)",
      (uint32_t)ntohl(base->len), length));
  }
 }
}
