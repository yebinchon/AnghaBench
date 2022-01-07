
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct hostent {int h_length; int h_addr; } ;
typedef int addr ;


 int AF_INET ;
 int assert (int ) ;
 struct hostent* gethostbyname (char*) ;
 int memcpy (int *,int ,size_t) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int pmap_getport (struct sockaddr_in*,int ,int ,int ) ;

int
getrpcport(char *host, int prognum, int versnum, int proto)
{
 struct sockaddr_in addr;
 struct hostent *hp;

 assert(host != ((void*)0));

 if ((hp = gethostbyname(host)) == ((void*)0))
  return (0);
 memset(&addr, 0, sizeof(addr));
 addr.sin_len = sizeof(struct sockaddr_in);
 addr.sin_family = AF_INET;
 addr.sin_port = 0;
 if (hp->h_length > addr.sin_len)
  hp->h_length = addr.sin_len;
 memcpy(&addr.sin_addr.s_addr, hp->h_addr, (size_t)hp->h_length);

 return (pmap_getport(&addr, (u_long)prognum, (u_long)versnum,
     (u_int)proto));
}
