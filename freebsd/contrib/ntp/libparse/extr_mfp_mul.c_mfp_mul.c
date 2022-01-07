
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32 ;
typedef int int32 ;


 int FRACTION_PREC ;
 int HIGH_MASK ;
 int LOW_MASK ;
 int M_NEG (int,int) ;
 int debug ;
 char* mfptoa (int,int,int) ;
 int printf (char*,...) ;

void
mfp_mul(
 int32 *o_i,
 u_int32 *o_f,
 int32 a_i,
 u_int32 a_f,
 int32 b_i,
 u_int32 b_f
 )
{
  int32 i, j;
  u_int32 f;
  u_long a[4];
  u_long b[4];
  u_long c[5];
  u_long carry;

  int neg = 0;

  if (a_i < 0)
    {
      neg = 1;
      M_NEG(a_i, a_f);
    }

  if (b_i < 0)
    {
      neg = !neg;
      M_NEG(b_i, b_f);
    }

  a[0] = a_f & LOW_MASK;
  a[1] = (a_f & HIGH_MASK) >> (FRACTION_PREC/2);
  a[2] = a_i & LOW_MASK;
  a[3] = (a_i & HIGH_MASK) >> (FRACTION_PREC/2);

  b[0] = b_f & LOW_MASK;
  b[1] = (b_f & HIGH_MASK) >> (FRACTION_PREC/2);
  b[2] = b_i & LOW_MASK;
  b[3] = (b_i & HIGH_MASK) >> (FRACTION_PREC/2);

  c[0] = c[1] = c[2] = c[3] = c[4] = 0;

  for (i = 0; i < 4; i++)
    for (j = 0; j < 4; j++)
      {
 u_long result_low, result_high;
 int low_index = (i+j)/2;
 int mid_index = 1+low_index;


 int high_index = 1+mid_index;


 result_low = (u_long)a[i] * (u_long)b[j];

 if ((i+j) & 1)
   {
     result_high = result_low >> (FRACTION_PREC/2);
     result_low <<= FRACTION_PREC/2;
     carry = (unsigned)1<<(FRACTION_PREC/2);
   }
 else
   {
     result_high = 0;
     carry = 1;
   }

 if (((c[low_index] >> 1) + (result_low >> 1) + ((c[low_index] & result_low & carry) != 0)) &
     (u_int32)((unsigned)1<<(FRACTION_PREC - 1))) {
   result_high++;
        }

 c[low_index] += result_low;

 if (((c[mid_index] >> 1) + (result_high >> 1) + ((c[mid_index] & result_high & 1) != 0)) &
     (u_int32)((unsigned)1<<(FRACTION_PREC - 1))) {
   c[high_index]++;
        }

 c[mid_index] += result_high;
      }







  if (c[3])
    {
      i = ((unsigned)1 << (FRACTION_PREC-1)) - 1;
      f = ~(unsigned)0;
    }
  else
    {
      i = c[2];
      f = c[1];
    }

  if (neg)
    {
      M_NEG(i, f);
    }

  *o_i = i;
  *o_f = f;
}
