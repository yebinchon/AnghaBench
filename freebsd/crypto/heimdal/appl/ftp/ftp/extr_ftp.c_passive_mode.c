
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct TYPE_7__ {int sa_family; } ;
struct TYPE_6__ {int sa_family; } ;


 scalar_t__ COMPLETE ;
 int IPTOS_THROUGHPUT ;
 int SOCK_STREAM ;
 int SO_DEBUG ;
 int close (int) ;
 scalar_t__ command (char*) ;
 scalar_t__ connect (int,TYPE_1__*,int ) ;
 int data ;
 TYPE_1__* data_addr ;
 int hisctladdr ;
 TYPE_3__* myctladdr ;
 int options ;
 int parse_epsv (int ) ;
 scalar_t__ parse_pasv (struct sockaddr_in*,int ) ;
 int pasv ;
 int printf (char*) ;
 int sendport ;
 int socket (int ,int ,int ) ;
 int socket_get_address (int ) ;
 int socket_set_address_and_port (TYPE_1__*,int ,int) ;
 int socket_set_debug (int) ;
 int socket_set_tos (int,int ) ;
 int socket_sockaddr_size (TYPE_1__*) ;
 int warn (char*) ;

__attribute__((used)) static int
passive_mode (void)
{
    int port;

    data = socket (myctladdr->sa_family, SOCK_STREAM, 0);
    if (data < 0) {
 warn ("socket");
 return (1);
    }
    if (options & SO_DEBUG)
 socket_set_debug (data);
    if (command ("EPSV") != COMPLETE) {
 if (command ("PASV") != COMPLETE) {
     printf ("Passive mode refused.\n");
     goto bad;
 }
    }





    port = parse_epsv (pasv);
    if (port > 0) {
 data_addr->sa_family = myctladdr->sa_family;
 socket_set_address_and_port (data_addr,
         socket_get_address (hisctladdr),
         port);
    } else {
 if (parse_pasv ((struct sockaddr_in *)data_addr, pasv) < 0)
     goto bad;
    }

    if (connect (data, data_addr, socket_sockaddr_size (data_addr)) < 0) {
 warn ("connect");
 goto bad;
    }



    return (0);
bad:
    close (data);
    data = -1;
    sendport = 1;
    return (1);
}
