
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int offsets_t ;
struct TYPE_6__ {int l_ui; unsigned long l_uf; } ;
typedef TYPE_1__ l_fp ;


 int IEEE_BADCALL ;

 int IEEE_OK ;

 scalar_t__ L_ISNEG (TYPE_1__*) ;
 scalar_t__ L_ISZERO (TYPE_1__*) ;
 int L_NEG (TYPE_1__*) ;
 int debug ;
 char* fmt_flt (unsigned int,int,int,int) ;
 int printf (char*,char*) ;

int
put_ieee754(
     unsigned char **bufpp,
     int size,
     l_fp *lfpp,
     offsets_t offsets
     )
{
  l_fp outlfp;





  int mbits;
  int msb;
  u_long mantissa_low = 0;
  u_long mantissa_high = 0;





  unsigned long mask;

  outlfp = *lfpp;

  switch (size)
    {
    case 129:

      mbits = 52;




      break;

    case 128:

      mbits = 23;




      break;

    default:
      return IEEE_BADCALL;
    }




  if (L_ISNEG(&outlfp))
    {
      L_NEG(&outlfp);



    }
  else
    {



    }

  if (L_ISZERO(&outlfp))
    {



    }
  else
    {



      mask = 0x80000000;
      if (outlfp.l_ui)
 {
   msb = 63;
   while (mask && ((outlfp.l_ui & mask) == 0))
     {
       mask >>= 1;
       msb--;
     }
 }
      else
 {
   msb = 31;
   while (mask && ((outlfp.l_uf & mask) == 0))
     {
       mask >>= 1;
       msb--;
     }
 }

      switch (size)
 {
 case 128:
   mantissa_high = 0;
   if (msb >= 32)
     {
       mantissa_low = (outlfp.l_ui & ((1 << (msb - 32)) - 1)) << (mbits - (msb - 32));
       mantissa_low |= outlfp.l_uf >> (mbits - (msb - 32));
     }
   else
     {
       mantissa_low = (outlfp.l_uf << (mbits - msb)) & ((1 << mbits) - 1);
     }
   break;

 case 129:
   if (msb >= 32)
     {
       mantissa_high = (outlfp.l_ui << (mbits - msb)) & ((1 << (mbits - 32)) - 1);
       mantissa_high |= outlfp.l_uf >> (32 - (mbits - msb));
       mantissa_low = (outlfp.l_ui & ((1 << (msb - mbits)) - 1)) << (32 - (msb - mbits));
       mantissa_low |= outlfp.l_uf >> (msb - mbits);
     }
   else
     {
       mantissa_high = outlfp.l_uf << (mbits - 32 - msb);
       mantissa_low = outlfp.l_uf << (mbits - 32);
     }
 }
    }
  return IEEE_OK;
}
