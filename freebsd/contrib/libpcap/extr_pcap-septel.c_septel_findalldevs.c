
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int * add_dev (int *,char*,int ,char*,char*) ;

int
septel_findalldevs(pcap_if_list_t *devlistp, char *errbuf)
{



  if (add_dev(devlistp,"septel",0,"Intel/Septel device",errbuf) == ((void*)0))
    return -1;
  return 0;
}
