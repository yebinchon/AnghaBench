
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
typedef int socklen_t ;
typedef int data_addr_ss ;
typedef int addr_str ;
struct TYPE_11__ {int sa_family; } ;




 int COMPLETE ;
 int ERROR ;
 int IPTOS_THROUGHPUT ;
 int SOCK_STREAM ;
 int SO_DEBUG ;
 scalar_t__ bind (int,TYPE_2__*,int ) ;
 int close (int) ;
 int command (char*,unsigned int,...) ;
 int data ;
 TYPE_2__* data_addr ;
 scalar_t__ debug ;
 int errx (int,char*,...) ;
 scalar_t__ getsockname (int,TYPE_2__*,int*) ;
 int * inet_ntop (int,int ,char*,int) ;
 scalar_t__ listen (int,int) ;
 TYPE_2__* myctladdr ;
 unsigned int ntohl (int ) ;
 unsigned int ntohs (int ) ;
 int options ;
 int sendport ;
 int socket (int,int ,int ) ;
 int socket_get_address (TYPE_2__*) ;
 int socket_get_port (TYPE_2__*) ;
 int socket_set_address_and_port (TYPE_2__*,int ,int ) ;
 int socket_set_debug (int) ;
 int socket_set_reuseaddr (int,int) ;
 int socket_set_tos (int,int ) ;
 int socket_sockaddr_size (TYPE_2__*) ;
 int verbose ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
active_mode (void)
{
    int tmpno = 0;
    socklen_t len;
    int result;

noport:
    data_addr->sa_family = myctladdr->sa_family;
    socket_set_address_and_port (data_addr, socket_get_address (myctladdr),
     sendport ? 0 : socket_get_port (myctladdr));

    if (data != -1)
 close (data);
    data = socket (data_addr->sa_family, SOCK_STREAM, 0);
    if (data < 0) {
 warn ("socket");
 if (tmpno)
     sendport = 1;
 return (1);
    }
    if (!sendport)
 socket_set_reuseaddr (data, 1);
    if (bind (data, data_addr, socket_sockaddr_size (data_addr)) < 0) {
 warn ("bind");
 goto bad;
    }
    if (options & SO_DEBUG)
 socket_set_debug (data);
    len = sizeof (data_addr_ss);
    if (getsockname (data, data_addr, &len) < 0) {
 warn ("getsockname");
 goto bad;
    }
    if (listen (data, 1) < 0)
 warn ("listen");
    if (sendport) {
 char addr_str[256];
 int inet_af;
 int overbose;

 if (inet_ntop (data_addr->sa_family, socket_get_address (data_addr),
         addr_str, sizeof(addr_str)) == ((void*)0))
     errx (1, "inet_ntop failed");
 switch (data_addr->sa_family) {
 case 129 :
     inet_af = 1;
     break;





 default :
     errx (1, "bad address family %d", data_addr->sa_family);
 }


 overbose = verbose;
 if (debug == 0)
     verbose = -1;

 result = command ("EPRT |%d|%s|%d|",
     inet_af, addr_str,
     ntohs(socket_get_port (data_addr)));
 verbose = overbose;

 if (result == ERROR) {
     struct sockaddr_in *sin4 = (struct sockaddr_in *)data_addr;

     unsigned int a = ntohl(sin4->sin_addr.s_addr);
     unsigned int p = ntohs(sin4->sin_port);

     if (data_addr->sa_family != 129) {
  warnx ("remote server doesn't support EPRT");
  goto bad;
     }

     result = command("PORT %d,%d,%d,%d,%d,%d",
        (a >> 24) & 0xff,
        (a >> 16) & 0xff,
        (a >> 8) & 0xff,
        a & 0xff,
        (p >> 8) & 0xff,
        p & 0xff);
     if (result == ERROR && sendport == -1) {
  sendport = 0;
  tmpno = 1;
  goto noport;
     }
     return (result != COMPLETE);
 }
 return result != COMPLETE;
    }
    if (tmpno)
 sendport = 1;





    return (0);
bad:
    close (data);
    data = -1;
    if (tmpno)
 sendport = 1;
    return (1);
}
