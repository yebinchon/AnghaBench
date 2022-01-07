
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_direction_t ;


 int pcap_snprintf (int ,int,char*) ;

__attribute__((used)) static int pcap_setdirection_acn(pcap_t *handle, pcap_direction_t d) {
 pcap_snprintf(handle->errbuf, sizeof(handle->errbuf),
     "Setting direction is not supported on ACN adapters");
 return -1;
}
