
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int dlt; } ;


 TYPE_1__* dlt_choices ;

const char *
pcap_datalink_val_to_name(int dlt)
{
 int i;

 for (i = 0; dlt_choices[i].name != ((void*)0); i++) {
  if (dlt_choices[i].dlt == dlt)
   return (dlt_choices[i].name + sizeof("DLT_") - 1);
 }
 return (((void*)0));
}
