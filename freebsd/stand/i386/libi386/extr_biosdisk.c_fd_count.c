
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int eax; int edx; int efl; int ctl; } ;


 int MAXBDDEV ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 int bd_reset_disk (int) ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
fd_count(void)
{
 int drive;

 for (drive = 0; drive < MAXBDDEV; drive++) {
  bd_reset_disk(drive);

  v86.ctl = V86_FLAGS;
  v86.addr = 0x13;
  v86.eax = 0x1500;
  v86.edx = drive;
  v86int();

  if (V86_CY(v86.efl))
   break;

  if ((v86.eax & 0x300) == 0)
   break;
 }

 return (drive);
}
