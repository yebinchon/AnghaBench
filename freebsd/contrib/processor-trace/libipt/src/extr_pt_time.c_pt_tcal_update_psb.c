
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_time_cal {int check_skl168; } ;
struct TYPE_2__ {scalar_t__ skl168; } ;
struct pt_config {TYPE_1__ errata; } ;


 int pte_internal ;

int pt_tcal_update_psb(struct pt_time_cal *tcal,
         const struct pt_config *config)
{
 if (!tcal || !config)
  return -pte_internal;

 if (config->errata.skl168)
  tcal->check_skl168 = 1;

 return 0;
}
