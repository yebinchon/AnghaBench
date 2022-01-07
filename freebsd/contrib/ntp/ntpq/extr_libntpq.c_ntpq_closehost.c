
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closesocket (int ) ;
 scalar_t__ numhosts ;
 int sockfd ;

int ntpq_closehost(void)
{
 if ( numhosts )
  return closesocket(sockfd);

 return 0;
}
