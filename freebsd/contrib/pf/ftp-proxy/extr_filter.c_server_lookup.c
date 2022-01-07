
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EPROTONOSUPPORT ;
 int errno ;
 int satosin (struct sockaddr*) ;
 int satosin6 (struct sockaddr*) ;
 int server_lookup4 (int ,int ,int ) ;
 int server_lookup6 (int ,int ,int ) ;

int
server_lookup(struct sockaddr *client, struct sockaddr *proxy,
    struct sockaddr *server)
{
 if (client->sa_family == AF_INET)
  return (server_lookup4(satosin(client), satosin(proxy),
      satosin(server)));

 if (client->sa_family == AF_INET6)
  return (server_lookup6(satosin6(client), satosin6(proxy),
      satosin6(server)));

 errno = EPROTONOSUPPORT;
 return (-1);
}
