
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int isnan (int ) ;
 int remainder (long double,long double) ;
 int remainderf (long double,long double) ;
 int remainderl (long double,long double) ;
 int remquo (long double,long double,int*) ;
 int remquof (long double,long double,int*) ;
 int remquol (long double,long double,int*) ;

__attribute__((used)) static void
test_invalid(long double x, long double y)
{
 int q;

 q = 0xdeadbeef;

 assert(isnan(remainder(x, y)));
 assert(isnan(remquo(x, y, &q)));




 assert(isnan(remainderf(x, y)));
 assert(isnan(remquof(x, y, &q)));




 assert(isnan(remainderl(x, y)));
 assert(isnan(remquol(x, y, &q)));



}
