
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_len; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int iruserok_sa (struct sockaddr*,int,int,char const*,char const*) ;
 int memcpy (int *,unsigned long*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;

int
iruserok(unsigned long raddr, int superuser, const char *ruser, const char *luser)
{
 struct sockaddr_in sin;

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(struct sockaddr_in);
 memcpy(&sin.sin_addr, &raddr, sizeof(sin.sin_addr));
 return iruserok_sa((struct sockaddr *)&sin, sin.sin_len, superuser,
  ruser, luser);
}
