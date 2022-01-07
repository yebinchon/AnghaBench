
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _2sumF (long double,long double) ;

__attribute__((used)) static inline long double
divl(long double a, long double b, long double c, long double d,
    long double e, long double f)
{
 long double inv, r;
 float fr, fw;

 _2sumF(a, c);
 b = b + c;
 _2sumF(d, f);
 e = e + f;

 inv = 1 / (d + e);

 r = (a + b) * inv;
 fr = r;
 r = fr;

 fw = d + e;
 e = d - fw + e;
 d = fw;

 r = r + (a - d * r + b - e * r) * inv;

 return r;
}
