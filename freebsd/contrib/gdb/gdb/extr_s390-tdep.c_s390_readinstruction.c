
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_byte ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ read_memory_nobpt (scalar_t__,int*,int) ;

__attribute__((used)) static int
s390_readinstruction (bfd_byte instr[], CORE_ADDR at)
{
  static int s390_instrlen[] = { 2, 4, 4, 6 };
  int instrlen;

  if (read_memory_nobpt (at, &instr[0], 2))
    return -1;
  instrlen = s390_instrlen[instr[0] >> 6];
  if (instrlen > 2)
    {
      if (read_memory_nobpt (at + 2, &instr[2], instrlen - 2))
        return -1;
    }
  return instrlen;
}
