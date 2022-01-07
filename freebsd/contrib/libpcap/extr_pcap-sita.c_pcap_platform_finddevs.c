
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ beginning; } ;
typedef TYPE_1__ pcap_if_list_t ;


 scalar_t__ acn_findalldevs (char*) ;
 scalar_t__ acn_if_list ;
 scalar_t__ acn_parse_hosts_file (char*) ;
 scalar_t__* alldevsp ;
 int strcpy (char*,char*) ;

int pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf) {



 *alldevsp = 0;
 strcpy(errbuf, "");
 if (acn_parse_hosts_file(errbuf))
  {

  return -1;
  }

 if (acn_findalldevs(errbuf))
  {

  return -1;
  }
 devlistp->beginning = acn_if_list;
 acn_if_list = 0;

 return 0;
}
