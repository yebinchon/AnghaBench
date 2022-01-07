
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bd_unit; scalar_t__ bd_sectors; int bd_flags; int bd_sectorsize; } ;
typedef TYPE_1__ bdinfo_t ;
struct TYPE_8__ {char* dv_name; } ;


 int BD_FLOPPY ;
 int BD_NO_MEDIA ;
 int BIOSDISK_SECSIZE ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int bcache_add_dev (int) ;
 scalar_t__ bd_get_diskinfo_std (TYPE_1__*) ;
 int bd_link ;
 TYPE_4__ biosfd ;
 TYPE_1__* calloc (int,int) ;
 int fd_count () ;
 int fdinfo ;
 int free (TYPE_1__*) ;
 int printf (char*,char,char*,int) ;

__attribute__((used)) static int
fd_init(void)
{
 int unit, numfd;
 bdinfo_t *bd;

 numfd = fd_count();
 for (unit = 0; unit < numfd; unit++) {
  if ((bd = calloc(1, sizeof(*bd))) == ((void*)0))
   break;

  bd->bd_sectorsize = BIOSDISK_SECSIZE;
  bd->bd_flags = BD_FLOPPY;
  bd->bd_unit = unit;


  if (bd_get_diskinfo_std(bd) != 0) {
   free(bd);
   break;
  }
  if (bd->bd_sectors == 0)
   bd->bd_flags |= BD_NO_MEDIA;

  printf("BIOS drive %c: is %s%d\n", ('A' + unit),
      biosfd.dv_name, unit);

  STAILQ_INSERT_TAIL(&fdinfo, bd, bd_link);
 }

 bcache_add_dev(unit);
 return (0);
}
