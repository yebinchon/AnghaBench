
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;


 int AF_UNIX ;
 int ENAMETOOLONG ;
 int SUN_LEN (struct sockaddr_un*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static int
uds_addr(const char *addr, struct sockaddr_un *sunp)
{

 if (addr == ((void*)0))
  return (-1);

 if (strncasecmp(addr, "uds://", 6) == 0)
  addr += 6;
 else if (strncasecmp(addr, "unix://", 7) == 0)
  addr += 7;
 else if (addr[0] == '/' &&
     strstr(addr, "://") == ((void*)0))
  ;
 else
  return (-1);

 sunp->sun_family = AF_UNIX;
 if (strlcpy(sunp->sun_path, addr, sizeof(sunp->sun_path)) >=
     sizeof(sunp->sun_path)) {
  return (ENAMETOOLONG);
 }
 sunp->sun_len = SUN_LEN(sunp);

 return (0);
}
