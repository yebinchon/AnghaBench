
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int close (int ) ;
 int closesocket (int ) ;

int
evutil_closesocket(evutil_socket_t sock)
{

 return close(sock);



}
