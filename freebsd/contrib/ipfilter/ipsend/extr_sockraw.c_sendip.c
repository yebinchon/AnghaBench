
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_family; } ;
struct ether_header {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int bcopy (char*,char*,int) ;
 int bzero (char*,int) ;
 int perror (char*) ;
 int sendto (int,char*,int,int ,struct sockaddr_in*,int) ;

int sendip(int fd, char *pkt, int len)
{
 struct ether_header *eh;
 struct sockaddr_in sin;

 eh = (struct ether_header *)pkt;
 bzero((char *)&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 pkt += 14;
 len -= 14;
 bcopy(pkt + 12, (char *)&sin.sin_addr, 4);

 if (sendto(fd, pkt, len, 0, &sin, sizeof(sin)) == -1)
     {
  perror("send");
  return -1;
     }

 return len;
}
