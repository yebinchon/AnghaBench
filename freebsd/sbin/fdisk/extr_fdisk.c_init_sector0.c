
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dos_partition {unsigned long dp_start; scalar_t__ dp_size; int dp_flag; int dp_typ; } ;
struct TYPE_2__ {struct dos_partition* parts; } ;


 int ACTIVE ;
 int DOSPTYP_386BSD ;
 int disksecs ;
 int dos (struct dos_partition*) ;
 int dos_cylsecs ;
 unsigned long dos_sectors ;
 int init_boot () ;
 TYPE_1__ mboot ;
 scalar_t__ rounddown (int ,int ) ;
 unsigned long roundup (unsigned long,unsigned long) ;

__attribute__((used)) static void
init_sector0(unsigned long start)
{
 struct dos_partition *partp = &mboot.parts[0];

 init_boot();

 partp->dp_typ = DOSPTYP_386BSD;
 partp->dp_flag = ACTIVE;
 start = roundup(start, dos_sectors);
 if(start == 0)
  start = dos_sectors;
 partp->dp_start = start;
 partp->dp_size = rounddown(disksecs, dos_cylsecs) - start;

 dos(partp);
}
