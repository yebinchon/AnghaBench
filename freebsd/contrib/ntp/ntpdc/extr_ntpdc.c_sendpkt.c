
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int currenthost ;
 int send (int ,void*,size_t,int ) ;
 int sockfd ;
 int warning (char*,int ) ;

__attribute__((used)) static int
sendpkt(
 void * xdata,
 size_t xdatalen
 )
{
 if (send(sockfd, xdata, xdatalen, 0) == -1) {
  warning("write to %s failed", currenthost);
  return -1;
 }

 return 0;
}
