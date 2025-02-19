
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int one ;
typedef int my_addr ;


 int AF_INET ;
 int INADDR_ANY ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int accept (int,int *,int *) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int proto (int,char const*) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;
 int socket (int ,int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static int
doit (int port, const char *service)
{
    int sock, sock2;
    struct sockaddr_in my_addr;
    int one = 1;
    int ret;

    sock = socket (AF_INET, SOCK_STREAM, 0);
    if (sock < 0)
 err (1, "socket");

    memset (&my_addr, 0, sizeof(my_addr));
    my_addr.sin_family = AF_INET;
    my_addr.sin_port = port;
    my_addr.sin_addr.s_addr = INADDR_ANY;

    if (setsockopt (sock, SOL_SOCKET, SO_REUSEADDR,
      (void *)&one, sizeof(one)) < 0)
 warn ("setsockopt SO_REUSEADDR");

    if (bind (sock, (struct sockaddr *)&my_addr, sizeof(my_addr)) < 0)
 err (1, "bind");

    while (1) {
        if (listen (sock, 1) < 0)
     err (1, "listen");

        sock2 = accept (sock, ((void*)0), ((void*)0));
        if (sock2 < 0)
     err (1, "accept");

        ret = proto (sock2, service);
    }
    return ret;
}
