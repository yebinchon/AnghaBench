
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_NUMERICHOST ;
 char* get_socket_address (int,int,int ) ;
 char* xstrdup (char*) ;

char *
get_peer_ipaddr(int sock)
{
 char *p;

 if ((p = get_socket_address(sock, 1, NI_NUMERICHOST)) != ((void*)0))
  return p;
 return xstrdup("UNKNOWN");
}
