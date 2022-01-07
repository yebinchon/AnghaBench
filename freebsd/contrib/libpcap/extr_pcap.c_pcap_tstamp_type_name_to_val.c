
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int * name; } ;


 int PCAP_ERROR ;
 scalar_t__ pcap_strcasecmp (int *,char const*) ;
 TYPE_1__* tstamp_type_choices ;

int
pcap_tstamp_type_name_to_val(const char *name)
{
 int i;

 for (i = 0; tstamp_type_choices[i].name != ((void*)0); i++) {
  if (pcap_strcasecmp(tstamp_type_choices[i].name, name) == 0)
   return (tstamp_type_choices[i].type);
 }
 return (PCAP_ERROR);
}
