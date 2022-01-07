
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dlt; int * name; } ;


 scalar_t__ ascii_strcasecmp (int *,char const*) ;
 TYPE_1__* dlt_choices ;

int
pcap_datalink_name_to_val(const char *name)
{
 int i;

 for (i = 0; dlt_choices[i].name != ((void*)0); i++) {
  if (ascii_strcasecmp(dlt_choices[i].name + sizeof("DLT_") - 1,
      name) == 0)
   return (dlt_choices[i].dlt);
 }
 return (-1);
}
