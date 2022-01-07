
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double LDBL_MAX ;
 long double LOGE2L ;
 long double MAXLOGL ;
 long double MINLOGL ;
 long double frexpl (long double,int*) ;
 long double huge ;
 long double twom10000 ;

__attribute__((used)) static long double
powil(long double x, int nn)
{
long double ww, y;
long double s;
int n, e, sign, asign, lx;

if( x == 0.0L )
 {
 if( nn == 0 )
  return( 1.0L );
 else if( nn < 0 )
  return( LDBL_MAX );
 else
  return( 0.0L );
 }

if( nn == 0 )
 return( 1.0L );


if( x < 0.0L )
 {
 asign = -1;
 x = -x;
 }
else
 asign = 0;


if( nn < 0 )
 {
 sign = -1;
 n = -nn;
 }
else
 {
 sign = 1;
 n = nn;
 }




s = x;
s = frexpl( s, &lx );
e = (lx - 1)*n;
if( (e == 0) || (e > 64) || (e < -64) )
 {
 s = (s - 7.0710678118654752e-1L) / (s + 7.0710678118654752e-1L);
 s = (2.9142135623730950L * s - 0.5L + lx) * nn * LOGE2L;
 }
else
 {
 s = LOGE2L * e;
 }

if( s > MAXLOGL )
 return (huge * huge);

if( s < MINLOGL )
 return (twom10000 * twom10000);




if( s < (-MAXLOGL+2.0L) )
 {
 x = 1.0L/x;
 sign = -sign;
 }


if( n & 1 )
 y = x;

else
 {
 y = 1.0L;
 asign = 0;
 }

ww = x;
n >>= 1;
while( n )
 {
 ww = ww * ww;
 if( n & 1 )
  y *= ww;
 n >>= 1;
 }

if( asign )
 y = -y;
if( sign < 0 )
 y = 1.0L/y;
return(y);
}
