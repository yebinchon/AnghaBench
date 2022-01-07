
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_UNIX ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int os_strlcpy (int ,char const*,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int open_socket(const char *path)
{
 struct sockaddr_un addr;
 int s;

 s = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (s < 0) {
  perror("socket(PF_UNIX)");
  return -1;
 }

 memset(&addr, 0, sizeof(addr));
 addr.sun_family = AF_UNIX;
 os_strlcpy(addr.sun_path, path, sizeof(addr.sun_path));
 if (bind(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  perror("hlr-auc-gw: bind(PF_UNIX)");
  close(s);
  return -1;
 }

 return s;
}
