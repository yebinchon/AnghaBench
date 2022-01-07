
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int pcap_if_t ;
typedef int pcap_if_list_t ;
struct TYPE_3__ {int Broadcast; int SubnetMask; int IPAddress; } ;
typedef TYPE_1__ npf_if_addr ;
typedef int bpf_u_int32 ;
typedef size_t LONG ;


 int MAX_NETWORK_ADDRESSES ;
 int PacketGetNetInfoEx (void*,TYPE_1__*,size_t*) ;
 int add_addr_to_dev (int *,struct sockaddr*,int,struct sockaddr*,int,struct sockaddr*,int,int *,int ,char*) ;
 int * add_dev (int *,char*,int ,char const*,char*) ;

__attribute__((used)) static int
pcap_add_if_npf(pcap_if_list_t *devlistp, char *name, bpf_u_int32 flags,
    const char *description, char *errbuf)
{
 pcap_if_t *curdev;
 npf_if_addr if_addrs[MAX_NETWORK_ADDRESSES];
 LONG if_addr_size;
 int res = 0;

 if_addr_size = MAX_NETWORK_ADDRESSES;




 curdev = add_dev(devlistp, name, flags, description, errbuf);
 if (curdev == ((void*)0)) {



  return (-1);
 }




 if (!PacketGetNetInfoEx((void *)name, if_addrs, &if_addr_size)) {
  return (0);
 }




 while (if_addr_size-- > 0) {




  res = add_addr_to_dev(curdev,
      (struct sockaddr *)&if_addrs[if_addr_size].IPAddress,
      sizeof (struct sockaddr_storage),
      (struct sockaddr *)&if_addrs[if_addr_size].SubnetMask,
      sizeof (struct sockaddr_storage),
      (struct sockaddr *)&if_addrs[if_addr_size].Broadcast,
      sizeof (struct sockaddr_storage),
      ((void*)0),
      0,
      errbuf);
  if (res == -1) {



   break;
  }
 }

 return (res);
}
