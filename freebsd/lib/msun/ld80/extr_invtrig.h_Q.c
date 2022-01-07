
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double qS1 ;
 long double qS2 ;
 long double qS3 ;
 long double qS4 ;
 long double qS5 ;

__attribute__((used)) static inline long double
Q(long double x)
{

 return (1.0 + x * (qS1 + x * (qS2 + x * (qS3 + x * (qS4 + x * qS5)))));
}
