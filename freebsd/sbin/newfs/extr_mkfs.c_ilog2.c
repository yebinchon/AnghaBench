
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int n ;


 int CHAR_BIT ;
 int errx (int,char*,int) ;

__attribute__((used)) static int
ilog2(int val)
{
 u_int n;

 for (n = 0; n < sizeof(n) * CHAR_BIT; n++)
  if (1 << n == val)
   return (n);
 errx(1, "ilog2: %d is not a power of 2\n", val);
}
