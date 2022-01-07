
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int SOCK_DEBUG_MESSAGE (char*) ;
 int SOCK_RECEIVEALL_YES ;
 int TEMP_BUF_SIZE ;
 int sock_recv (int ,char*,int,int ,char*,int) ;

int sock_discard(SOCKET sock, int size, char *errbuf, int errbuflen)
{


 char buffer[32768];
 while (size > 32768)
 {
  if (sock_recv(sock, buffer, 32768, SOCK_RECEIVEALL_YES, errbuf, errbuflen) == -1)
   return -1;

  size -= 32768;
 }





 if (size)
 {
  if (sock_recv(sock, buffer, size, SOCK_RECEIVEALL_YES, errbuf, errbuflen) == -1)
   return -1;
 }

 SOCK_DEBUG_MESSAGE("I'm currently discarding data\n");

 return 0;
}
