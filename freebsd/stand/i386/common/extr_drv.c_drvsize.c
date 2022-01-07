
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct edd_params {int dummy; } ;
struct dsk {int drive; } ;
struct TYPE_6__ {int len; int sectors; } ;
struct TYPE_5__ {int addr; int eax; int efl; int esi; int ds; int edx; int ctl; } ;


 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 int VTOPOFF (TYPE_2__*) ;
 int VTOPSEG (TYPE_2__*) ;
 TYPE_2__ params ;
 int printf (char*,int) ;
 TYPE_1__ v86 ;
 int v86int () ;

uint64_t
drvsize(struct dsk *dskp)
{

 params.len = sizeof(struct edd_params);
 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0x4800;
 v86.edx = dskp->drive;
 v86.ds = VTOPSEG(&params);
 v86.esi = VTOPOFF(&params);
 v86int();
 if (V86_CY(v86.efl)) {
  printf("error %u\n", v86.eax >> 8 & 0xff);
  return (0);
 }
 return (params.sectors);
}
