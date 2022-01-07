
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int * h_addr_list; } ;
typedef int sin ;


 int AF_INET ;
 scalar_t__ ISDIGIT (char) ;
 int SOCK_STREAM ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 struct hostent* gethostbyname (char*) ;
 int htons (int) ;
 int inet_aton (char*,int *) ;
 int memcpy (int *,int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;

int
connecttcp(char *server, int port)
{
 struct sockaddr_in sin;
 struct hostent *host;
 int fd;

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_port = htons(port & 65535);

 if (ISDIGIT(*server)) {
  if (inet_aton(server, &sin.sin_addr) == -1) {
   return -1;
  }
 } else {
  host = gethostbyname(server);
  if (host == ((void*)0))
   return -1;
  memcpy(&sin.sin_addr, host->h_addr_list[0],
         sizeof(sin.sin_addr));
 }

 fd = socket(AF_INET, SOCK_STREAM, 0);
 if (fd == -1)
  return -1;

 if (connect(fd, (struct sockaddr *)&sin, sizeof(sin)) == -1) {
  close(fd);
  return -1;
 }

 return fd;
}
