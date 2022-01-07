
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct l_fixedpt {int fraction; int int_part; } ;
typedef int netdissect_options ;
typedef int int32_t ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 double FMAXINT ;
 int ND_PRINT (int *) ;
 int p_ntp_time (int *,struct l_fixedpt const*) ;

__attribute__((used)) static void
p_ntp_delta(netdissect_options *ndo,
            register const struct l_fixedpt *olfp,
            register const struct l_fixedpt *lfp)
{
 register int32_t i;
 register uint32_t u, uf;
 register uint32_t ou, ouf;
 register uint32_t f;
 register double ff;
 int signbit;

 u = EXTRACT_32BITS(&lfp->int_part);
 ou = EXTRACT_32BITS(&olfp->int_part);
 uf = EXTRACT_32BITS(&lfp->fraction);
 ouf = EXTRACT_32BITS(&olfp->fraction);
 if (ou == 0 && ouf == 0) {
  p_ntp_time(ndo, lfp);
  return;
 }

 i = u - ou;

 if (i > 0) {
  signbit = 0;
  f = uf - ouf;
  if (ouf > uf)
   i -= 1;
 } else if (i < 0) {
  signbit = 1;
  f = ouf - uf;
  if (uf > ouf)
   i += 1;
  i = -i;
 } else {
  if (uf > ouf) {
   signbit = 0;
   f = uf - ouf;
  } else {
   signbit = 1;
   f = ouf - uf;
  }
 }

 ff = f;
 if (ff < 0.0)
  ff += FMAXINT;
 ff = ff / FMAXINT;
 f = (uint32_t)(ff * 1000000000.0);
 ND_PRINT((ndo, "%s%d.%09d", signbit ? "-" : "+", i, f));
}
