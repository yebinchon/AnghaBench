
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int SHUT_WR ;
 int closesocket (int ) ;
 scalar_t__ shutdown (int ,int ) ;
 int sock_geterror (char*,char*,int) ;

int sock_close(SOCKET sock, char *errbuf, int errbuflen)
{





 if (shutdown(sock, SHUT_WR))
 {
  sock_geterror("shutdown(): ", errbuf, errbuflen);

  closesocket(sock);
  return -1;
 }

 closesocket(sock);
 return 0;
}
