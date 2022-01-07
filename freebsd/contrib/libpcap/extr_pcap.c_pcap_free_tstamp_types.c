
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int*) ;

void
pcap_free_tstamp_types(int *tstamp_type_list)
{
 free(tstamp_type_list);
}
