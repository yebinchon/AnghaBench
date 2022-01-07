
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_length; int h_addr; int h_addrtype; } ;
typedef int caddr_t ;


 int AF_INET ;
 int INADDR_NONE ;
 int LOG_ERR ;
 int bcopy (int ,int ,int ) ;
 int bzero (char*,int) ;
 struct hostent* gethostbyname (char*) ;
 int inet_addr (char*) ;
 int syslog (int ,char*,char*) ;

__attribute__((used)) static int
Set_address(char *addr, struct sockaddr_in *sin)
{
  struct hostent *hp;

  bzero((char *)sin, sizeof(struct sockaddr));
  sin->sin_family = AF_INET;
  if((sin->sin_addr.s_addr = inet_addr(addr)) == INADDR_NONE) {
    hp = gethostbyname(addr);
    if (!hp) {
      syslog(LOG_ERR,"unknown host %s", addr);
      return 1;
    }
    sin->sin_family = hp->h_addrtype;
    bcopy(hp->h_addr, (caddr_t)&sin->sin_addr, hp->h_length);
  }
  return 0;
}
