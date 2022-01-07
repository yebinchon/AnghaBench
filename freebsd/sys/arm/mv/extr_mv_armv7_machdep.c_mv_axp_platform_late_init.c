
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;
typedef int phandle_t ;


 int OF_finddevice (char*) ;
 int armadaxp_init_coher_fabric () ;
 int armadaxp_l2_init () ;
 int printf (char*) ;
 scalar_t__ soc_decode_win () ;

__attribute__((used)) static void
mv_axp_platform_late_init(platform_t plate)
{
 phandle_t node;



 if (soc_decode_win() != 0)
  printf("WARNING: could not re-initialise decode windows! "
      "Running with existing settings...\n");
 if ((node = OF_finddevice("/")) == -1)
  return;



 armadaxp_init_coher_fabric();

 armadaxp_l2_init();
}
