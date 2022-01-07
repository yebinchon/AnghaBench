
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
typedef int* offsets_t ;
struct TYPE_5__ {int l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 int IEEE_BADCALL ;

 int IEEE_NAN ;
 int IEEE_NEGINFINITY ;
 int IEEE_NEGOVERFLOW ;
 int IEEE_OK ;
 int IEEE_POSINFINITY ;
 int IEEE_POSOVERFLOW ;

 int L_CLR (TYPE_1__*) ;
 int L_NEG (TYPE_1__*) ;
 int debug ;
 char* fmt_flt (unsigned int,int,int,int) ;
 char* fmt_hex (unsigned char*,int) ;
 int get_byte (unsigned char*,int*,int*) ;
 int printf (char*,char*,char*,double,char*) ;

int
fetch_ieee754(
       unsigned char **buffpp,
       int size,
       l_fp *lfpp,
       offsets_t offsets
       )
{
  unsigned char *bufp = *buffpp;
  unsigned int sign;
  unsigned int bias;
  unsigned int maxexp;
  int mbits;
  u_long mantissa_low;
  u_long mantissa_high;
  u_long characteristic;
  long exponent;



  unsigned char val;
  int fieldindex = 0;

  switch (size)
    {
    case 129:



      mbits = 52;
      bias = 1023;
      maxexp = 2047;
      break;

    case 128:



      mbits = 23;
      bias = 127;
      maxexp = 255;
      break;

    default:
      return IEEE_BADCALL;
    }

  val = get_byte(bufp, offsets, &fieldindex);

  sign = (val & 0x80) != 0;
  characteristic = (val & 0x7F);

  val = get_byte(bufp, offsets, &fieldindex);

  switch (size)
    {
    case 128:
      characteristic <<= 1;
      characteristic |= (val & 0x80) != 0;

      mantissa_high = 0;

      mantissa_low = (val &0x7F) << 16;
      mantissa_low |= (u_long)get_byte(bufp, offsets, &fieldindex) << 8;
      mantissa_low |= get_byte(bufp, offsets, &fieldindex);
      break;

    case 129:
      characteristic <<= 4;
      characteristic |= (val & 0xF0) >> 4;

      mantissa_high = (val & 0x0F) << 16;
      mantissa_high |= (u_long)get_byte(bufp, offsets, &fieldindex) << 8;
      mantissa_high |= get_byte(bufp, offsets, &fieldindex);

      mantissa_low = (u_long)get_byte(bufp, offsets, &fieldindex) << 24;
      mantissa_low |= (u_long)get_byte(bufp, offsets, &fieldindex) << 16;
      mantissa_low |= (u_long)get_byte(bufp, offsets, &fieldindex) << 8;
      mantissa_low |= get_byte(bufp, offsets, &fieldindex);
      break;

    default:
      return IEEE_BADCALL;
    }
  *buffpp += fieldindex;




  if (characteristic == maxexp)
    {



      if (mantissa_low || mantissa_high)
 {



   return IEEE_NAN;
 }
      else
 {



   return sign ? IEEE_NEGINFINITY : IEEE_POSINFINITY;
 }
    }
  else
    {




      L_CLR(lfpp);




      exponent = characteristic - bias;

      if (exponent > 31)
 {



   return sign ? IEEE_NEGOVERFLOW : IEEE_POSOVERFLOW;
 }
      else
 {
   int frac_offset;

   frac_offset = mbits - exponent;

   if (characteristic == 0)
     {



       return IEEE_OK;
     }
   else
     {



       if (mbits > 31)
  mantissa_high |= 1 << (mbits - 32);
       else
  mantissa_low |= 1 << mbits;





       if (frac_offset > mbits)
  {
    lfpp->l_ui = 0;
    frac_offset -= mbits + 1;
    if (mbits > 31)
      {
        lfpp->l_uf = mantissa_high << (63 - mbits);
        lfpp->l_uf |= mantissa_low >> (mbits - 33);
        lfpp->l_uf >>= frac_offset;
      }
    else
      {
        lfpp->l_uf = mantissa_low >> frac_offset;
      }
  }
       else
  {
    if (frac_offset > 32)
      {



        lfpp->l_ui = mantissa_high >> (frac_offset - 32);
        lfpp->l_uf = (mantissa_high & ((1 << (frac_offset - 32)) - 1)) << (64 - frac_offset);
        lfpp->l_uf |= mantissa_low >> (frac_offset - 32);
      }
    else
      {



        lfpp->l_ui = mantissa_high << (32 - frac_offset);
        lfpp->l_ui |= (mantissa_low >> frac_offset) & ((1 << (32 - frac_offset)) - 1);
        lfpp->l_uf = (mantissa_low & ((1 << frac_offset) - 1)) << (32 - frac_offset);
      }
  }




       if (sign)
  {
    L_NEG(lfpp);
  }

       return IEEE_OK;
     }
 }
    }
}
