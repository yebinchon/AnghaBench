
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PNP_CONFIG_CONTROL ;
 int _PNP_ADDRESS ;
 int outb (int ,int) ;
 int pnp_write (int ,int) ;

void
send_Initiation_LFSR()
{
    int cur, i;

    pnp_write(PNP_CONFIG_CONTROL, 0x2);


    outb(_PNP_ADDRESS, 0);
    outb(_PNP_ADDRESS, 0);

    cur = 0x6a;

    for (i = 0; i < 32; i++) {
 outb(_PNP_ADDRESS, cur);
 cur = (cur >> 1) | (((cur ^ (cur >> 1)) << 7) & 0xff);
    }
}
