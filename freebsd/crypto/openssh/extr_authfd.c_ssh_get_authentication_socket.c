
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sunaddr ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int SOCK_STREAM ;
 int SSH_AUTHSOCKET_ENV_NAME ;
 int SSH_ERR_AGENT_NOT_PRESENT ;
 int SSH_ERR_SYSTEM_ERROR ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 char* getenv (int ) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

int
ssh_get_authentication_socket(int *fdp)
{
 const char *authsocket;
 int sock, oerrno;
 struct sockaddr_un sunaddr;

 if (fdp != ((void*)0))
  *fdp = -1;

 authsocket = getenv(SSH_AUTHSOCKET_ENV_NAME);
 if (!authsocket)
  return SSH_ERR_AGENT_NOT_PRESENT;

 memset(&sunaddr, 0, sizeof(sunaddr));
 sunaddr.sun_family = AF_UNIX;
 strlcpy(sunaddr.sun_path, authsocket, sizeof(sunaddr.sun_path));

 if ((sock = socket(AF_UNIX, SOCK_STREAM, 0)) < 0)
  return SSH_ERR_SYSTEM_ERROR;


 if (fcntl(sock, F_SETFD, FD_CLOEXEC) == -1 ||
     connect(sock, (struct sockaddr *)&sunaddr, sizeof(sunaddr)) < 0) {
  oerrno = errno;
  close(sock);
  errno = oerrno;
  return SSH_ERR_SYSTEM_ERROR;
 }
 if (fdp != ((void*)0))
  *fdp = sock;
 else
  close(sock);
 return 0;
}
