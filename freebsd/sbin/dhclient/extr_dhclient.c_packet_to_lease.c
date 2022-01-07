
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct packet {TYPE_5__* raw; TYPE_4__* options; } ;
struct TYPE_8__ {int len; char* iabuf; } ;
struct TYPE_7__ {int len; char* iabuf; } ;
struct client_lease {char* server_name; char* filename; TYPE_3__ nextserver; TYPE_2__ address; TYPE_1__* options; } ;
struct TYPE_10__ {int yiaddr; int siaddr; int* sname; int* file; } ;
struct TYPE_9__ {int len; int* data; } ;
struct TYPE_6__ {char* data; size_t len; } ;


 int DHCP_FILE_LEN ;
 int DHCP_SNAME_LEN ;
 size_t DHO_DHCP_OPTION_OVERLOAD ;
 int check_option (struct client_lease*,int) ;
 int free_client_lease (struct client_lease*) ;
 void* malloc (int) ;
 int memcpy (char*,int*,int) ;
 int memset (struct client_lease*,int ,int) ;
 int warning (char*,...) ;

struct client_lease *
packet_to_lease(struct packet *packet)
{
 struct client_lease *lease;
 int i;

 lease = malloc(sizeof(struct client_lease));

 if (!lease) {
  warning("dhcpoffer: no memory to record lease.");
  return (((void*)0));
 }

 memset(lease, 0, sizeof(*lease));


 for (i = 0; i < 256; i++) {
  if (packet->options[i].len) {
   lease->options[i].data =
       malloc(packet->options[i].len + 1);
   if (!lease->options[i].data) {
    warning("dhcpoffer: no memory for option %d", i);
    free_client_lease(lease);
    return (((void*)0));
   } else {
    memcpy(lease->options[i].data,
        packet->options[i].data,
        packet->options[i].len);
    lease->options[i].len =
        packet->options[i].len;
    lease->options[i].data[lease->options[i].len] =
        0;
   }
   if (!check_option(lease,i)) {

    warning("Invalid lease option - ignoring offer");
    free_client_lease(lease);
    return (((void*)0));
   }
  }
 }

 lease->address.len = sizeof(packet->raw->yiaddr);
 memcpy(lease->address.iabuf, &packet->raw->yiaddr, lease->address.len);

 lease->nextserver.len = sizeof(packet->raw->siaddr);
 memcpy(lease->nextserver.iabuf, &packet->raw->siaddr, lease->nextserver.len);







 if ((!packet->options[DHO_DHCP_OPTION_OVERLOAD].len ||
     !(packet->options[DHO_DHCP_OPTION_OVERLOAD].data[0] & 2)) &&
     packet->raw->sname[0]) {
  lease->server_name = malloc(DHCP_SNAME_LEN + 1);
  if (!lease->server_name) {
   warning("dhcpoffer: no memory for server name.");
   free_client_lease(lease);
   return (((void*)0));
  }
  memcpy(lease->server_name, packet->raw->sname, DHCP_SNAME_LEN);
  lease->server_name[DHCP_SNAME_LEN]='\0';
 }


 if ((!packet->options[DHO_DHCP_OPTION_OVERLOAD].len ||
     !(packet->options[DHO_DHCP_OPTION_OVERLOAD].data[0] & 1)) &&
     packet->raw->file[0]) {

  lease->filename = malloc(DHCP_FILE_LEN + 1);
  if (!lease->filename) {
   warning("dhcpoffer: no memory for filename.");
   free_client_lease(lease);
   return (((void*)0));
  }
  memcpy(lease->filename, packet->raw->file, DHCP_FILE_LEN);
  lease->filename[DHCP_FILE_LEN]='\0';
 }
 return lease;
}
