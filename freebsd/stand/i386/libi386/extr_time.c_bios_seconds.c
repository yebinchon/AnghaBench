
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int ecx; int edx; scalar_t__ ctl; } ;


 int bcd2bin (int) ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
bios_seconds(void)
{
    int hr, minute, sec;

    v86.ctl = 0;
    v86.addr = 0x1a;
    v86.eax = 0x0200;
    v86int();

    hr = bcd2bin((v86.ecx & 0xff00) >> 8);
    minute = bcd2bin(v86.ecx & 0xff);
    sec = bcd2bin((v86.edx & 0xff00) >> 8);

    return (hr * 3600 + minute * 60 + sec);
}
