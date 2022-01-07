
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base ;
 unsigned int damp ;
 unsigned int skew ;
 int t_max ;
 int t_min ;

__attribute__((used)) static unsigned
adapt(unsigned delta, unsigned numpoints, int first)
{
    unsigned k;

    if (first)
 delta = delta / damp;
    else
 delta /= 2;
    delta += delta / numpoints;
    k = 0;
    while (delta > ((base - t_min) * t_max) / 2) {
 delta /= base - t_min;
 k += base;
    }
    return k + (((base - t_min + 1) * delta) / (delta + skew));
}
