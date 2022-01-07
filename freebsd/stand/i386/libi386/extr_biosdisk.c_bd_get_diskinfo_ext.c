
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct edd_params {int len; int sector_size; int heads; int sectors_per_track; scalar_t__ sectors; scalar_t__ cylinders; } ;
struct bdinfo {int bd_sectorsize; int bd_hds; int bd_sec; int bd_sectors; scalar_t__ bd_cyl; int bd_unit; } ;
typedef int params ;
struct TYPE_2__ {int addr; int eax; int efl; int esi; int ds; int edx; int ctl; } ;


 int BIOSDISK_SECSIZE ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 int VTOPOFF (struct edd_params*) ;
 int VTOPSEG (struct edd_params*) ;
 int bzero (struct edd_params*,int) ;
 TYPE_1__ v86 ;
 int v86int () ;

__attribute__((used)) static int
bd_get_diskinfo_ext(struct bdinfo *bd)
{
 struct edd_params params;
 uint64_t total;


 bzero(&params, sizeof(params));
 params.len = sizeof(params);
 v86.ctl = V86_FLAGS;
 v86.addr = 0x13;
 v86.eax = 0x4800;
 v86.edx = bd->bd_unit;
 v86.ds = VTOPSEG(&params);
 v86.esi = VTOPOFF(&params);
 v86int();

 if (V86_CY(v86.efl) && ((v86.eax & 0xff00) != 0))
  return ((v86.eax & 0xff00) >> 8);







 if (params.sector_size >= 512 &&
     params.sector_size <= 16384 &&
     (params.sector_size % BIOSDISK_SECSIZE) == 0)
  bd->bd_sectorsize = params.sector_size;

 bd->bd_cyl = params.cylinders;
 bd->bd_hds = params.heads;
 bd->bd_sec = params.sectors_per_track;

 if (params.sectors != 0) {
  total = params.sectors;
 } else {
  total = (uint64_t)params.cylinders *
      params.heads * params.sectors_per_track;
 }
 bd->bd_sectors = total;

 return (0);
}
