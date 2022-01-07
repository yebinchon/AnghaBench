
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sockaddr_in {int sin_len; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int FILE ;


 int AF_INET ;
 int __ivaliduser_sa (int *,struct sockaddr*,int,char const*,char const*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in*,int ,int) ;

int
__ivaliduser(FILE *hostf, u_int32_t raddr, const char *luser, const char *ruser)
{
 struct sockaddr_in sin;

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(struct sockaddr_in);
 memcpy(&sin.sin_addr, &raddr, sizeof(sin.sin_addr));
 return __ivaliduser_sa(hostf, (struct sockaddr *)&sin, sin.sin_len,
  luser, ruser);
}
