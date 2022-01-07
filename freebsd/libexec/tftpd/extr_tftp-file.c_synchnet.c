
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int rbuf ;


 int FIONREAD ;
 int MAXPKTSIZE ;
 int ioctl (int,int ,int*) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;

int
synchnet(int peer)
{
 int i, j = 0;
 char rbuf[MAXPKTSIZE];
 struct sockaddr_storage from;
 socklen_t fromlen;

 while (1) {
  (void) ioctl(peer, FIONREAD, &i);
  if (i) {
   j++;
   fromlen = sizeof from;
   (void) recvfrom(peer, rbuf, sizeof (rbuf), 0,
    (struct sockaddr *)&from, &fromlen);
  } else {
   return(j);
  }
 }
}
