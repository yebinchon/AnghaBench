
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct edd_packet {int len; int count; int lba; void* seg; void* off; } ;
typedef int daddr_t ;
typedef struct edd_packet* caddr_t ;
struct TYPE_4__ {int bd_unit; } ;
typedef TYPE_1__ bdinfo_t ;
struct TYPE_5__ {int addr; int eax; int efl; void* esi; void* ds; int edx; int ctl; } ;


 int BD_WR ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 void* VTOPOFF (struct edd_packet*) ;
 void* VTOPSEG (struct edd_packet*) ;
 TYPE_2__ v86 ;
 int v86int () ;

__attribute__((used)) static int
bd_edd_io(bdinfo_t *bd, daddr_t dblk, int blks, caddr_t dest,
    int dowrite)
{
 static struct edd_packet packet;

 packet.len = sizeof(struct edd_packet);
 packet.count = blks;
 packet.off = VTOPOFF(dest);
 packet.seg = VTOPSEG(dest);
 packet.lba = dblk;
 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;

 if (dowrite == BD_WR)
  v86.eax = 0x4300;
 else
  v86.eax = 0x4200;
 v86.edx = bd->bd_unit;
 v86.ds = VTOPSEG(&packet);
 v86.esi = VTOPOFF(&packet);
 v86int();
 if (V86_CY(v86.efl))
  return (v86.eax >> 8);
 return (0);
}
