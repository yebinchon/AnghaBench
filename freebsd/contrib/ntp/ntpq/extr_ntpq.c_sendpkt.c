
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int currenthost ;
 int debug ;
 int dump_hex_printable (void*,size_t) ;
 int printf (char*,...) ;
 int send (int ,void*,size_t,int ) ;
 int sockfd ;
 int warning (char*,int ) ;

__attribute__((used)) static int
sendpkt(
 void * xdata,
 size_t xdatalen
 )
{
 if (debug >= 3)
  printf("Sending %zu octets\n", xdatalen);

 if (send(sockfd, xdata, xdatalen, 0) == -1) {
  warning("write to %s failed", currenthost);
  return -1;
 }

 if (debug >= 4) {
  printf("Request packet:\n");
  dump_hex_printable(xdata, xdatalen);
 }
 return 0;
}
