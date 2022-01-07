
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* fe51 ;



__attribute__((used)) static void fe51_sub(fe51 h, const fe51 f, const fe51 g)
{




    h[0] = (f[0] + 0xfffffffffffda) - g[0];
    h[1] = (f[1] + 0xffffffffffffe) - g[1];
    h[2] = (f[2] + 0xffffffffffffe) - g[2];
    h[3] = (f[3] + 0xffffffffffffe) - g[3];
    h[4] = (f[4] + 0xffffffffffffe) - g[4];
}
