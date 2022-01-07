
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_kvp_ipaddr_value {scalar_t__ dhcp_enabled; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
typedef int if_file ;
typedef int cmd ;
typedef int FILE ;


 int EINVAL ;
 int KVP_LOG (int ,char*) ;
 int LOG_ERR ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* kvp_if_name_to_mac (char*) ;
 int kvp_write_file (int *,char*,char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int system (char*) ;

__attribute__((used)) static int
kvp_set_ip_info(char *if_name, struct hv_kvp_ipaddr_value *new_val)
{
 int error = 0;
 char if_file[128];
 FILE *file;
 char cmd[512];
 char *mac_addr;




 snprintf(if_file, sizeof(if_file), "%s%s", "/var/db/hyperv",
     "hv_set_ip_data");
 file = fopen(if_file, "w");

 if (file == ((void*)0)) {
  KVP_LOG(LOG_ERR, "FreeBSD Failed to open config file\n");
  return (errno);
 }





 mac_addr = kvp_if_name_to_mac(if_name);
 if (mac_addr == ((void*)0)) {
  error = EINVAL;
  goto kvp_set_ip_info_error;
 }

 error = kvp_write_file(file, "HWADDR", "", mac_addr);
 if (error) {
  goto kvp_set_ip_info_error;
 }


 error = kvp_write_file(file, "IF_NAME", "", if_name);
 if (error) {
  goto kvp_set_ip_info_error;
 }


 error = kvp_write_file(file, "IP_ADDR", "",
     (char *)new_val->ip_addr);
 if (error) {
  goto kvp_set_ip_info_error;
 }


 error = kvp_write_file(file, "SUBNET", "",
     (char *)new_val->sub_net);
 if (error) {
  goto kvp_set_ip_info_error;
 }



 error = kvp_write_file(file, "GATEWAY", "",
     (char *)new_val->gate_way);
 if (error) {
  goto kvp_set_ip_info_error;
 }


 error = kvp_write_file(file, "DNS", "", (char *)new_val->dns_addr);
 if (error) {
  goto kvp_set_ip_info_error;
 }


 if (new_val->dhcp_enabled) {
  error = kvp_write_file(file, "DHCP", "", "1");
 } else{
  error = kvp_write_file(file, "DHCP", "", "0");
 }

 if (error) {
  goto kvp_set_ip_info_error;
 }

 free(mac_addr);
 fclose(file);






 snprintf(cmd, sizeof(cmd), "%s %s",
     "sh /usr/libexec/hyperv/hv_set_ifconfig", if_file);
 system(cmd);
 return (0);

kvp_set_ip_info_error:
 KVP_LOG(LOG_ERR, "Failed to write config file\n");
 free(mac_addr);
 fclose(file);
 return (error);
}
