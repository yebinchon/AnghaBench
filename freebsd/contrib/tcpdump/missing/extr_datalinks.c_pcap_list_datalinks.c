
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 scalar_t__ malloc (int) ;
 int pcap_datalink (int *) ;

int
pcap_list_datalinks(pcap_t *p, int **dlt_buffer)
{





 *dlt_buffer = (int*)malloc(sizeof(**dlt_buffer));
 if (*dlt_buffer == ((void*)0))
  return (-1);
 **dlt_buffer = pcap_datalink(p);
 return (1);
}
