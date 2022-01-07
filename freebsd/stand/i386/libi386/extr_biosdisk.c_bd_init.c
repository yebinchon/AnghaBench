
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bd_unit; } ;
typedef TYPE_1__ bdinfo_t ;
struct TYPE_8__ {char* dv_name; } ;


 int BIOS_NUMDRIVES ;
 scalar_t__ PTOV (int ) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int bcache_add_dev (int) ;
 int bd_int13probe (TYPE_1__*) ;
 int bd_link ;
 TYPE_4__ bioshd ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hdinfo ;
 int printf (char*,char,char*,int) ;

__attribute__((used)) static int
bd_init(void)
{
 int base, unit;
 bdinfo_t *bd;

 base = 0x80;
 for (unit = 0; unit < *(unsigned char *)PTOV(BIOS_NUMDRIVES); unit++) {



  if ((bd = calloc(1, sizeof(*bd))) == ((void*)0))
   break;
  bd->bd_unit = base + unit;
  if (!bd_int13probe(bd)) {
   free(bd);
   break;
  }

  printf("BIOS drive %c: is %s%d\n", ('C' + unit),
      bioshd.dv_name, unit);

  STAILQ_INSERT_TAIL(&hdinfo, bd, bd_link);
 }
 bcache_add_dev(unit);
 return (0);
}
