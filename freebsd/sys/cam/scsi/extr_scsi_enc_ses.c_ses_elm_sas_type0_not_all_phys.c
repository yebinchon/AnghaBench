
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int byte1; } ;
union ses_elm_sas_hdr {TYPE_1__ type0_noneip; } ;



int
ses_elm_sas_type0_not_all_phys(union ses_elm_sas_hdr *hdr)
{
 return ((hdr)->type0_noneip.byte1 & 0x1);
}
