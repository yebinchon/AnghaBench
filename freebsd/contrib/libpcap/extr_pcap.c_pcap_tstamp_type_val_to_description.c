
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; char const* description; int * name; } ;


 TYPE_1__* tstamp_type_choices ;

const char *
pcap_tstamp_type_val_to_description(int tstamp_type)
{
 int i;

 for (i = 0; tstamp_type_choices[i].name != ((void*)0); i++) {
  if (tstamp_type_choices[i].type == tstamp_type)
   return (tstamp_type_choices[i].description);
 }
 return (((void*)0));
}
