
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; int bits; scalar_t__ cmd2; } ;
typedef TYPE_1__ BITCMD ;



__attribute__((used)) static void
compress_mode(BITCMD *set)
{
 BITCMD *nset;
 int setbits, clrbits, Xbits, op;

 for (nset = set;;) {

  while ((op = nset->cmd) != '+' && op != '-' && op != 'X') {
   *set++ = *nset++;
   if (!op)
    return;
  }

  for (setbits = clrbits = Xbits = 0;; nset++) {
   if ((op = nset->cmd) == '-') {
    clrbits |= nset->bits;
    setbits &= ~nset->bits;
    Xbits &= ~nset->bits;
   } else if (op == '+') {
    setbits |= nset->bits;
    clrbits &= ~nset->bits;
    Xbits &= ~nset->bits;
   } else if (op == 'X')
    Xbits |= nset->bits & ~setbits;
   else
    break;
  }
  if (clrbits) {
   set->cmd = '-';
   set->cmd2 = 0;
   set->bits = clrbits;
   set++;
  }
  if (setbits) {
   set->cmd = '+';
   set->cmd2 = 0;
   set->bits = setbits;
   set++;
  }
  if (Xbits) {
   set->cmd = 'X';
   set->cmd2 = 0;
   set->bits = Xbits;
   set++;
  }
 }
}
