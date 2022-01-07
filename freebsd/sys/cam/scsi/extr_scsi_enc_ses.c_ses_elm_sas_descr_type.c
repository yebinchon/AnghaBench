
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int byte1; } ;
union ses_elm_sas_hdr {TYPE_1__ base_hdr; } ;



int
ses_elm_sas_descr_type(union ses_elm_sas_hdr *obj)
{
 return ((obj)->base_hdr.byte1 >> 6);
}
