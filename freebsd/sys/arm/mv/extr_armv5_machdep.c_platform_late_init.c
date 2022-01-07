
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MV_SOC_UNSUPPORTED ;
 scalar_t__ mv_check_soc_family () ;
 int panic (char*) ;
 int printf (char*) ;
 scalar_t__ soc_decode_win () ;

void
platform_late_init(void)
{



 if (mv_check_soc_family() == MV_SOC_UNSUPPORTED)
  panic("Unsupported SoC family\n");

 if (soc_decode_win() != 0)
  printf("WARNING: could not re-initialise decode windows! "
      "Running with existing settings...\n");
}
