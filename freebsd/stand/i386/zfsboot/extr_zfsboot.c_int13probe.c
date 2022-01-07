
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int edx; int ecx; int efl; int ctl; } ;


 int DRV_MASK ;
 int V86_CY (int ) ;
 int V86_FLAGS ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
int13probe(int drive)
{
    v86.ctl = V86_FLAGS;
    v86.addr = 0x13;
    v86.eax = 0x800;
    v86.edx = drive;
    v86int();

    if (!V86_CY(v86.efl) &&
 ((v86.edx & 0xff) != (drive & DRV_MASK))) {
 if ((v86.ecx & 0x3f) == 0) {
  return(0);
 }
 return (1);
    }
    return(0);
}
