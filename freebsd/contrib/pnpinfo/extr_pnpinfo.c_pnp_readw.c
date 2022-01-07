
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int pnp_read (int) ;

u_short
pnp_readw(int d)
{
    int c = pnp_read(d) << 8 ;
    c |= pnp_read(d+1);
    return c;
}
