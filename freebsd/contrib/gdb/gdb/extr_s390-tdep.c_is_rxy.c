
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;



__attribute__((used)) static int
is_rxy (bfd_byte *insn, int op1, int op2,
        unsigned int *r1, unsigned int *d2, unsigned int *x2, unsigned int *b2)
{
  if (insn[0] == op1
      && insn[5] == op2)
    {
      *r1 = (insn[1] >> 4) & 0xf;
      *x2 = insn[1] & 0xf;
      *b2 = (insn[2] >> 4) & 0xf;

      *d2 = ((((insn[2] & 0xf) << 8) | insn[3] | (insn[4] << 12))
  ^ 0x80000) - 0x80000;
      return 1;
    }
  else
    return 0;
}
