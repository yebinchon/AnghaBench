
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int error (char*,char*,...) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket (int ,int ,int ) ;
 char* strerror (int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
connect_local_xsocket_path(const char *pathname)
{
 int sock;
 struct sockaddr_un addr;

 sock = socket(AF_UNIX, SOCK_STREAM, 0);
 if (sock < 0)
  error("socket: %.100s", strerror(errno));
 memset(&addr, 0, sizeof(addr));
 addr.sun_family = AF_UNIX;
 strlcpy(addr.sun_path, pathname, sizeof addr.sun_path);
 if (connect(sock, (struct sockaddr *)&addr, sizeof(addr)) == 0)
  return sock;
 close(sock);
 error("connect %.100s: %.100s", addr.sun_path, strerror(errno));
 return -1;
}
