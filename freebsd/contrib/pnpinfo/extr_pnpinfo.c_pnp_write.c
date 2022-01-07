
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int _PNP_ADDRESS ;
 int _PNP_WRITE_DATA ;
 int outb (int ,int) ;

void
pnp_write(int d, u_char r)
{
    outb (_PNP_ADDRESS, d);
    outb (_PNP_WRITE_DATA, r);
}
