
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IPPORT_RESERVED ;
 int close (int) ;
 TYPE_1__* data_dest ;
 TYPE_1__* his_addr ;
 int htons (int) ;
 int inet_pton (scalar_t__,char*,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ paranoid ;
 int pdata ;
 int reply (int,char*,...) ;
 int socket_get_address (TYPE_1__*) ;
 int socket_set_port (TYPE_1__*,int ) ;
 int socket_sockaddr_size (TYPE_1__*) ;
 char* strchr (char*,char) ;
 int strtol (char*,char**,int ) ;
 scalar_t__ usedefault ;

void
eprt(char *str)
{
 char *end;
 char sep;
 int af;
 int ret;
 int port;

 usedefault = 0;
 if (pdata >= 0) {
     close(pdata);
     pdata = -1;
 }

 sep = *str++;
 if (sep == '\0') {
  reply(500, "Bad syntax in EPRT");
  return;
 }
 af = strtol (str, &end, 0);
 if (af == 0 || *end != sep) {
  reply(500, "Bad syntax in EPRT");
  return;
 }
 str = end + 1;
 switch (af) {





 case 1 :
     data_dest->sa_family = AF_INET;
  break;
 default :
  reply(522, "Network protocol %d not supported, use (1"



        ")", af);
  return;
 }
 end = strchr (str, sep);
 if (end == ((void*)0)) {
  reply(500, "Bad syntax in EPRT");
  return;
 }
 *end = '\0';
 ret = inet_pton (data_dest->sa_family, str,
    socket_get_address (data_dest));

 if (ret != 1) {
  reply(500, "Bad address syntax in EPRT");
  return;
 }
 str = end + 1;
 port = strtol (str, &end, 0);
 if (port == 0 || *end != sep) {
  reply(500, "Bad port syntax in EPRT");
  return;
 }
 if (port < IPPORT_RESERVED) {
  reply(500, "Bad port in invalid range in EPRT");
  return;
 }
 socket_set_port (data_dest, htons(port));

 if (paranoid &&
     (data_dest->sa_family != his_addr->sa_family ||
      memcmp(socket_get_address(data_dest), socket_get_address(his_addr), socket_sockaddr_size(data_dest)) != 0))
 {
  reply(500, "Bad address in EPRT");
 }
 reply(200, "EPRT command successful.");
}
