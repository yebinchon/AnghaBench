
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LONG_MAX ;

__attribute__((used)) static long
read_huge_number (char **pp, int end, int *bits)
{
  char *p = *pp;
  int sign = 1;
  long n = 0;
  int radix = 10;
  char overflow = 0;
  int nbits = 0;
  int c;
  long upper_limit;

  if (*p == '-')
    {
      sign = -1;
      p++;
    }



  if (*p == '0')
    {
      radix = 8;
      p++;
    }

  upper_limit = LONG_MAX / radix;

  while ((c = *p++) >= '0' && c < ('0' + radix))
    {
      if (n <= upper_limit)
 {
   n *= radix;
   n += c - '0';
 }
      else
 overflow = 1;



      if (radix == 8)
 {
   if (nbits == 0)
     {
       if (c == '0')

  ;
       else if (c == '1')
  nbits = 1;
       else if (c == '2' || c == '3')
  nbits = 2;
       else
  nbits = 3;
     }
   else
     nbits += 3;
 }
    }
  if (end)
    {
      if (c && c != end)
 {
   if (bits != ((void*)0))
     *bits = -1;
   return 0;
 }
    }
  else
    --p;

  *pp = p;
  if (overflow)
    {
      if (nbits == 0)
 {


   if (bits != ((void*)0))
     *bits = -1;
   return 0;
 }



      if (sign == -1)
 ++nbits;
      if (bits)
 *bits = nbits;
    }
  else
    {
      if (bits)
 *bits = 0;
      return n * sign;
    }

  return 0;
}
