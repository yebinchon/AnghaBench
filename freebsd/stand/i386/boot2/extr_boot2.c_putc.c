
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int ebx; } ;


 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static inline void
putc(int c)
{

 v86.addr = 0x10;
 v86.eax = 0xe00 | (c & 0xff);
 v86.ebx = 0x7;
 v86int();
}
