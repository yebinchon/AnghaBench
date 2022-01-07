
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oword ;
typedef int fieldval ;
typedef int ULONGEST ;
typedef int LONGEST ;


 scalar_t__ BITS_BIG_ENDIAN ;
 int extract_signed_integer (char*,int) ;
 int store_signed_integer (char*,int,int) ;
 int warning (char*,int) ;

void
modify_field (char *addr, LONGEST fieldval, int bitpos, int bitsize)
{
  LONGEST oword;



  if (bitsize < (8 * (int) sizeof (fieldval))
      && (~fieldval & ~((1 << (bitsize - 1)) - 1)) == 0)
    fieldval = fieldval & ((1 << bitsize) - 1);


  if (bitsize < (8 * (int) sizeof (fieldval))
      && 0 != (fieldval & ~((1 << bitsize) - 1)))
    {


      warning ("Value does not fit in %d bits.", bitsize);


      fieldval = fieldval & ((1 << bitsize) - 1);
    }

  oword = extract_signed_integer (addr, sizeof oword);


  if (BITS_BIG_ENDIAN)
    bitpos = sizeof (oword) * 8 - bitpos - bitsize;


  if (bitsize < 8 * (int) sizeof (oword))
    oword &= ~(((((ULONGEST) 1) << bitsize) - 1) << bitpos);
  else
    oword &= ~((~(ULONGEST) 0) << bitpos);
  oword |= fieldval << bitpos;

  store_signed_integer (addr, sizeof oword, oword);
}
