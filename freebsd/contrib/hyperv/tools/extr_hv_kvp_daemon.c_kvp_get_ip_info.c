
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct ifaddrs {struct ifaddrs* ifa_next; TYPE_2__* ifa_addr; TYPE_2__* ifa_netmask; int ifa_name; } ;
struct hv_kvp_ipaddr_value {scalar_t__ sub_net; int addr_family; scalar_t__ ip_addr; } ;
typedef int cidr_mask ;
struct TYPE_4__ {int sa_family; } ;


 int ADDR_FAMILY_IPV4 ;
 int ADDR_FAMILY_IPV6 ;
 int AF_INET ;
 int AF_INET6 ;
 int HV_KVP_OP_ENUMERATE ;
 int HV_KVP_OP_GET_IP_INFO ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 scalar_t__ hweight32 (unsigned int*) ;
 int kvp_get_ipconfig_info (char*,struct hv_kvp_ipaddr_value*) ;
 int kvp_process_ip_address (TYPE_2__*,int,char*,size_t,int*) ;
 int snprintf (char*,int,char*,int) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (int ,char*,size_t) ;

__attribute__((used)) static int
kvp_get_ip_info(int family, char *if_name, int op,
    void *out_buffer, size_t length)
{
 struct ifaddrs *ifap;
 struct ifaddrs *curp;
 int offset = 0;
 int sn_offset = 0;
 int error = 0;
 char *buffer;
 size_t buffer_length;
 struct hv_kvp_ipaddr_value *ip_buffer = ((void*)0);
 char cidr_mask[5];
 int weight;
 int i;
 unsigned int *w = ((void*)0);
 char *sn_str;
 size_t sn_str_length;
 struct sockaddr_in6 *addr6;

 if (op == HV_KVP_OP_ENUMERATE) {
  buffer = out_buffer;
  buffer_length = length;
 } else {
  ip_buffer = out_buffer;
  buffer = (char *)ip_buffer->ip_addr;
  buffer_length = sizeof(ip_buffer->ip_addr);
  ip_buffer->addr_family = 0;
 }

 if (getifaddrs(&ifap)) {
  strlcpy(buffer, "getifaddrs failed\n", buffer_length);
  return (errno);
 }

 curp = ifap;
 while (curp != ((void*)0)) {
  if (curp->ifa_addr == ((void*)0)) {
   curp = curp->ifa_next;
   continue;
  }

  if ((if_name != ((void*)0)) &&
      (strncmp(curp->ifa_name, if_name, strlen(if_name)))) {




   curp = curp->ifa_next;
   continue;
  }







  if ((family != 0) && (curp->ifa_addr->sa_family != family)) {
   curp = curp->ifa_next;
   continue;
  }
  if ((curp->ifa_addr->sa_family != AF_INET) &&
      (curp->ifa_addr->sa_family != AF_INET6)) {
   curp = curp->ifa_next;
   continue;
  }

  if (op == HV_KVP_OP_GET_IP_INFO) {



   if (curp->ifa_addr->sa_family == AF_INET) {
    ip_buffer->addr_family |= ADDR_FAMILY_IPV4;




    error = kvp_process_ip_address(
     curp->ifa_netmask,
     AF_INET,
     (char *)
     ip_buffer->sub_net,
     length,
     &sn_offset);
    if (error) {
     goto kvp_get_ip_info_ipaddr;
    }
   } else {
    ip_buffer->addr_family |= ADDR_FAMILY_IPV6;




    weight = 0;
    sn_str = (char *)ip_buffer->sub_net;
    sn_str_length = sizeof(ip_buffer->sub_net);
    addr6 = (struct sockaddr_in6 *)(uintptr_t)
        curp->ifa_netmask;
    w = (unsigned int *)(uintptr_t)addr6->sin6_addr.s6_addr;

    for (i = 0; i < 4; i++)
    {
     weight += hweight32(&w[i]);
    }

    snprintf(cidr_mask, sizeof(cidr_mask), "/%d", weight);
    if ((length - sn_offset) <
        (strlen(cidr_mask) + 1)) {
     goto kvp_get_ip_info_ipaddr;
    }

    if (sn_offset == 0) {
     strlcpy(sn_str, cidr_mask, sn_str_length);
    } else{
     strlcat(sn_str, cidr_mask, sn_str_length);
    }
    strlcat((char *)ip_buffer->sub_net, ";", sn_str_length);
    sn_offset += strlen(sn_str) + 1;
   }




   kvp_get_ipconfig_info(if_name, ip_buffer);
  }

kvp_get_ip_info_ipaddr:
  error = kvp_process_ip_address(curp->ifa_addr,
   curp->ifa_addr->sa_family,
   buffer,
   length, &offset);
  if (error) {
   goto kvp_get_ip_info_done;
  }

  curp = curp->ifa_next;
 }

kvp_get_ip_info_done:
 freeifaddrs(ifap);
 return (error);
}
