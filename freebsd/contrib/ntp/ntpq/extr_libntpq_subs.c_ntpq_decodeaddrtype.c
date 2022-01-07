
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 char decodeaddrtype (int *) ;

char ntpq_decodeaddrtype(sockaddr_u *sock)
{
 return decodeaddrtype(sock);
}
