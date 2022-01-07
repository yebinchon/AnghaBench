
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pkt {int dummy; } ;
struct TYPE_4__ {int sa; } ;
typedef TYPE_1__ sockaddr_u ;
typedef int SOCKET ;
typedef int GETSOCKNAME_SOCKLEN_TYPE ;


 int debug ;
 int pkt_output (struct pkt*,int,int ) ;
 int printf (char*,int,char*) ;
 int recvfrom (int ,void*,int,int ,int *,int*) ;
 char* sptoa (TYPE_1__*) ;
 int stdout ;

int
recvdata(
 SOCKET rsock,
 sockaddr_u * sender,
 void * rdata,
 int rdata_length
 )
{
 GETSOCKNAME_SOCKLEN_TYPE slen;
 int recvc;

 slen = sizeof(*sender);
 recvc = recvfrom(rsock, rdata, rdata_length, 0,
    &sender->sa, &slen);
 if (recvc < 0)
  return recvc;






 return recvc;
}
