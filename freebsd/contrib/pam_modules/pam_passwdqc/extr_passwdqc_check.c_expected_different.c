
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed ;


 int FIXED_BITS ;

__attribute__((used)) static int expected_different(int charset, int length)
{
 fixed x, y, z;

 x = ((fixed)(charset - 1) << FIXED_BITS) / charset;
 y = x;
 while (--length > 0) y = (y * x) >> FIXED_BITS;
 z = (fixed)charset * (((fixed)1 << FIXED_BITS) - y);

 return (int)(z >> FIXED_BITS);
}
