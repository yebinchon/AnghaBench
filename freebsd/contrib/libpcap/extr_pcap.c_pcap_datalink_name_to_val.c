
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dlt; int * name; } ;


 TYPE_1__* dlt_choices ;
 scalar_t__ pcap_strcasecmp (int *,char const*) ;

int
pcap_datalink_name_to_val(const char *name)
{
 int i;

 for (i = 0; dlt_choices[i].name != ((void*)0); i++) {
  if (pcap_strcasecmp(dlt_choices[i].name, name) == 0)
   return (dlt_choices[i].dlt);
 }
 return (-1);
}
