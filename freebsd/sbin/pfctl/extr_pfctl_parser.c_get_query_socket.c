
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_DGRAM ;
 int err (int,char*) ;
 int get_socket_domain () ;
 int socket (int ,int ,int ) ;

int
get_query_socket(void)
{
 static int s = -1;

 if (s == -1) {
  if ((s = socket(get_socket_domain(), SOCK_DGRAM, 0)) == -1)
   err(1, "socket");
 }

 return (s);
}
