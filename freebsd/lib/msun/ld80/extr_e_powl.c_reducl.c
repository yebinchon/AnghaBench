
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LNXT ;
 long double floorl (long double) ;
 long double ldexpl (long double,int ) ;

__attribute__((used)) static inline long double
reducl(long double x)
{
long double t;

t = ldexpl( x, LNXT );
t = floorl( t );
t = ldexpl( t, -LNXT );
return(t);
}
