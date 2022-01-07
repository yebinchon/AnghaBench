
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int platform_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int cells ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int*,int) ;
 int board_set_revision (int) ;
 int board_set_serial (int) ;

__attribute__((used)) static void
bcm2835_late_init(platform_t plat)
{
 phandle_t system;
 pcell_t cells[2];
 int len;

 system = OF_finddevice("/system");
 if (system != -1) {
  len = OF_getencprop(system, "linux,serial", cells,
      sizeof(cells));
  if (len > 0)
   board_set_serial(((uint64_t)cells[0]) << 32 | cells[1]);

  len = OF_getencprop(system, "linux,revision", cells,
      sizeof(cells));
  if (len > 0)
   board_set_revision(cells[0]);
 }
}
