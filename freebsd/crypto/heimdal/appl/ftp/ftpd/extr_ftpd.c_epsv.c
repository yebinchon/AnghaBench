
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int socklen_t ;
typedef int pasv_addr_ss ;
struct TYPE_12__ {int pw_uid; } ;
struct TYPE_11__ {int sa_family; } ;
struct TYPE_10__ {int sa_family; } ;


 int SOCK_STREAM ;
 scalar_t__ bind (int,TYPE_1__*,int ) ;
 int close (int) ;
 TYPE_4__* ctrl_addr ;
 int fatal (char*) ;
 scalar_t__ getsockname (int,TYPE_1__*,int*) ;
 scalar_t__ listen (int,int) ;
 int ntohs (int ) ;
 TYPE_1__* pasv_addr ;
 int pdata ;
 int perror_reply (int,char*) ;
 TYPE_5__* pw ;
 int reply (int,char*,int ) ;
 int restricted_data_ports ;
 scalar_t__ seteuid (int ) ;
 int socket (int ,int ,int ) ;
 int socket_get_address (TYPE_4__*) ;
 int socket_get_port (TYPE_1__*) ;
 int socket_set_address_and_port (TYPE_1__*,int ,int ) ;
 int socket_set_portrange (int,int ,int ) ;
 int socket_sockaddr_size (TYPE_1__*) ;

void
epsv(char *proto)
{
 socklen_t len;

 pdata = socket(ctrl_addr->sa_family, SOCK_STREAM, 0);
 if (pdata < 0) {
  perror_reply(425, "Can't open passive connection");
  return;
 }
 pasv_addr->sa_family = ctrl_addr->sa_family;
 socket_set_address_and_port (pasv_addr,
         socket_get_address (ctrl_addr),
         0);
 socket_set_portrange(pdata, restricted_data_ports,
     pasv_addr->sa_family);
 if (seteuid(0) < 0)
  fatal("Failed to seteuid");
 if (bind(pdata, pasv_addr, socket_sockaddr_size (pasv_addr)) < 0) {
  if (seteuid(pw->pw_uid))
   fatal("Failed to seteuid");
  goto pasv_error;
 }
 if (seteuid(pw->pw_uid) < 0)
  fatal("Failed to seteuid");
 len = sizeof(pasv_addr_ss);
 if (getsockname(pdata, pasv_addr, &len) < 0)
  goto pasv_error;
 if (listen(pdata, 1) < 0)
  goto pasv_error;

 reply(229, "Entering Extended Passive Mode (|||%d|)",
       ntohs(socket_get_port (pasv_addr)));
 return;

pasv_error:
 close(pdata);
 pdata = -1;
 perror_reply(425, "Can't open passive connection");
 return;
}
