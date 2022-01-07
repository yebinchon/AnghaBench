
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dos_partition {int dp_flag; } ;
struct TYPE_2__ {struct dos_partition* parts; } ;


 int ACTIVE ;
 int Decimal (char*,int,int,int ) ;
 int NDOSPART ;
 scalar_t__ a_flag ;
 TYPE_1__ mboot ;
 int ok (char*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
change_active(int which)
{
 struct dos_partition *partp = &mboot.parts[0];
 int active, i, new, tmp;

 active = -1;
 for (i = 0; i < NDOSPART; i++) {
  if ((partp[i].dp_flag & ACTIVE) == 0)
   continue;
  printf("Partition %d is marked active\n", i + 1);
  if (active == -1)
   active = i + 1;
 }
 if (a_flag && which != -1)
  active = which;
 else if (active == -1)
  active = 1;

 if (!ok("Do you want to change the active partition?"))
  return;
setactive:
 do {
  new = active;
  Decimal("active partition", new, tmp, 0);
  if (new < 1 || new > 4) {
   printf("Active partition number must be in range 1-4."
     "  Try again.\n");
   goto setactive;
  }
  active = new;
 } while (!ok("Are you happy with this choice"));
 for (i = 0; i < NDOSPART; i++)
  partp[i].dp_flag = 0;
 if (active > 0 && active <= NDOSPART)
  partp[active-1].dp_flag = ACTIVE;
}
