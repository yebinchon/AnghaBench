
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int _PNP_ADDRESS ;
 int inb (int) ;
 int outb (int ,int) ;
 int rd_port ;

u_char
pnp_read(int d)
{
    outb(_PNP_ADDRESS, d);
    return inb( (rd_port << 2) + 3) & 0xff;
}
