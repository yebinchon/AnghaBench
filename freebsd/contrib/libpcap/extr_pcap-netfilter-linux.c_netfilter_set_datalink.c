
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int linktype; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int
netfilter_set_datalink(pcap_t *handle, int dlt)
{
 handle->linktype = dlt;
 return 0;
}
