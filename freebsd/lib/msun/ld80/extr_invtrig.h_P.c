
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double pS0 ;
 long double pS1 ;
 long double pS2 ;
 long double pS3 ;
 long double pS4 ;
 long double pS5 ;
 long double pS6 ;

__attribute__((used)) static inline long double
P(long double x)
{

 return (x * (pS0 + x * (pS1 + x * (pS2 + x * (pS3 + x * (pS4 + x * (pS5 + x * pS6)))))));

}
