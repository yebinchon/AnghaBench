
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int pcap_if_t ;
typedef int pcap_if_list_t ;
typedef int get_if_flags_func ;
typedef int bpf_u_int32 ;


 int add_addr_to_dev (int *,struct sockaddr*,size_t,struct sockaddr*,size_t,struct sockaddr*,size_t,struct sockaddr*,size_t,char*) ;
 int * find_or_add_if (int *,char const*,int ,int ,char*) ;

int
add_addr_to_if(pcap_if_list_t *devlistp, const char *name,
    bpf_u_int32 if_flags, get_if_flags_func get_flags_func,
    struct sockaddr *addr, size_t addr_size,
    struct sockaddr *netmask, size_t netmask_size,
    struct sockaddr *broadaddr, size_t broadaddr_size,
    struct sockaddr *dstaddr, size_t dstaddr_size,
    char *errbuf)
{
 pcap_if_t *curdev;




 curdev = find_or_add_if(devlistp, name, if_flags, get_flags_func,
     errbuf);
 if (curdev == ((void*)0)) {



  return (-1);
 }

 if (addr == ((void*)0)) {




  return (0);
 }






 return (add_addr_to_dev(curdev, addr, addr_size, netmask,
     netmask_size, broadaddr, broadaddr_size, dstaddr,
     dstaddr_size, errbuf));
}
