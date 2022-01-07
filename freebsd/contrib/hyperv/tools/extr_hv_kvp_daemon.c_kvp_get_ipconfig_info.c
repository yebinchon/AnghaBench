
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_kvp_ipaddr_value {int dhcp_enabled; scalar_t__ dns_addr; scalar_t__ gate_way; } ;
typedef int dhcp_info ;
typedef int cmd ;
typedef int FILE ;


 int INET6_ADDRSTRLEN ;
 int INET_ADDRSTRLEN ;
 int MAX_GATEWAY_SIZE ;
 int MAX_IP_ADDR_SIZE ;
 char* fgets (char*,int,int *) ;
 int kvp_process_ipconfig_file (char*,char*,int,int ,int) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
kvp_get_ipconfig_info(char *if_name, struct hv_kvp_ipaddr_value *buffer)
{
 char cmd[512];
 char dhcp_info[128];
 char *p;
 FILE *file;




 snprintf(cmd, sizeof(cmd), "netstat -rn | grep %s | awk '/default/ {print $2 }'", if_name);




 kvp_process_ipconfig_file(cmd, (char *)buffer->gate_way,
     (MAX_GATEWAY_SIZE * 2), INET_ADDRSTRLEN, 0);



 snprintf(cmd, sizeof(cmd), "netstat -rn inet6 | grep %s | awk '/default/ {print $2 }'", if_name);




 kvp_process_ipconfig_file(cmd, (char *)buffer->gate_way,
     (MAX_GATEWAY_SIZE * 2), INET6_ADDRSTRLEN, 1);
 snprintf(cmd, sizeof(cmd), "%s", "sh /usr/libexec/hyperv/hv_get_dns_info");




 kvp_process_ipconfig_file(cmd, (char *)buffer->dns_addr,
     (MAX_IP_ADDR_SIZE * 2), INET_ADDRSTRLEN, 0);
 snprintf(cmd, sizeof(cmd), "%s %s",
     "sh /usr/libexec/hyperv/hv_get_dhcp_info", if_name);

 file = popen(cmd, "r");
 if (file == ((void*)0)) {
  return;
 }

 p = fgets(dhcp_info, sizeof(dhcp_info), file);
 if (p == ((void*)0)) {
  pclose(file);
  return;
 }

 if (!strncmp(p, "Enabled", 7)) {
  buffer->dhcp_enabled = 1;
 } else{
  buffer->dhcp_enabled = 0;
 }

 pclose(file);
}
