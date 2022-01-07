
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int bd_flags; int bd_unit; scalar_t__ bd_sectors; int bd_cyl; int bd_hds; int bd_sec; int bd_sectorsize; } ;
typedef TYPE_1__ bdinfo_t ;
struct TYPE_13__ {char* dv_name; } ;
struct TYPE_12__ {char* dv_name; } ;
struct TYPE_11__ {char* dv_name; } ;
struct TYPE_10__ {int addr; int eax; int edx; int efl; int ctl; } ;


 int BD_CDROM ;
 int BD_FLOPPY ;
 int BD_MODEEDD1 ;
 int BD_MODEEDD3 ;
 int BD_MODEINT13 ;
 int BD_NO_MEDIA ;
 int BIOSDISK_SECSIZE ;
 int DPRINTF (char*,int,int,int,int) ;
 scalar_t__ V86_CY (int ) ;
 int V86_FLAGS ;
 int bd_check_extensions (int) ;
 int bd_get_diskinfo_ext (TYPE_1__*) ;
 int bd_get_diskinfo_std (TYPE_1__*) ;
 int bd_reset_disk (int) ;
 TYPE_5__ bioscd ;
 TYPE_4__ biosfd ;
 TYPE_3__ bioshd ;
 int printf (char*,char const*,int) ;
 TYPE_2__ v86 ;
 int v86int () ;

__attribute__((used)) static bool
bd_int13probe(bdinfo_t *bd)
{
 int edd, ret;

 bd->bd_flags &= ~BD_NO_MEDIA;

 edd = bd_check_extensions(bd->bd_unit);
 if (edd == 0)
  bd->bd_flags |= BD_MODEINT13;
 else if (edd < 0x30)
  bd->bd_flags |= BD_MODEEDD1;
 else
  bd->bd_flags |= BD_MODEEDD3;


 bd->bd_sectorsize = BIOSDISK_SECSIZE;





 if (bd->bd_unit < 0x80) {

  bd_reset_disk(bd->bd_unit);


  v86.ctl = V86_FLAGS;
  v86.addr = 0x13;
  v86.eax = 0x1500;
  v86.edx = bd->bd_unit;
  v86int();
  if (V86_CY(v86.efl) || (v86.eax & 0x300) == 0)
   return (0);
 }

 ret = 1;
 if (edd != 0)
  ret = bd_get_diskinfo_ext(bd);
 if (ret != 0 || bd->bd_sectors == 0)
  ret = bd_get_diskinfo_std(bd);

 if (ret != 0 && bd->bd_unit < 0x80) {

  bd->bd_cyl = 80;
  bd->bd_hds = 2;
  bd->bd_sec = 18;
  bd->bd_sectors = 2880;

  bd->bd_flags |= BD_NO_MEDIA;
  ret = 0;
 }

 if (ret != 0) {

  if ((bd->bd_flags & BD_CDROM) != 0)
   return (1);

  if (bd->bd_sectors != 0 && edd != 0) {
   bd->bd_sec = 63;
   bd->bd_hds = 255;
   bd->bd_cyl =
       (bd->bd_sectors + bd->bd_sec * bd->bd_hds - 1) /
       bd->bd_sec * bd->bd_hds;
  } else {
   const char *dv_name;

   if ((bd->bd_flags & BD_FLOPPY) != 0)
    dv_name = biosfd.dv_name;
   else if ((bd->bd_flags & BD_CDROM) != 0)
    dv_name = bioscd.dv_name;
   else
    dv_name = bioshd.dv_name;

   printf("Can not get information about %s unit %#x\n",
       dv_name, bd->bd_unit);
   return (0);
  }
 }

 if (bd->bd_sec == 0)
  bd->bd_sec = 63;
 if (bd->bd_hds == 0)
  bd->bd_hds = 255;

 if (bd->bd_sectors == 0)
  bd->bd_sectors = (uint64_t)bd->bd_cyl * bd->bd_hds * bd->bd_sec;

 DPRINTF("unit 0x%x geometry %d/%d/%d\n", bd->bd_unit, bd->bd_cyl,
     bd->bd_hds, bd->bd_sec);

 return (1);
}
