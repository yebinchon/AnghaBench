
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_family; int sun_path; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int PF_LOCAL ;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int SUN_LEN (struct sockaddr_un*) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 int warn (char*) ;

int
sockets_main(int argc, char **argv)
{
 int error, fd;
 struct sockaddr_un addr;

 if (argc < 2)
  return EXIT_FAILURE;

 fd = socket(PF_LOCAL, SOCK_STREAM, 0);
 if (fd == -1) {
  warn("socket");
  return EXIT_FAILURE;
 }




 (void)strlcpy(addr.sun_path, argv[1], sizeof(addr.sun_path));
 addr.sun_family = PF_UNIX;



 error = bind(fd, (struct sockaddr *)&addr, sizeof(addr));

 if (error == -1) {
  warn("connect");



  return EXIT_FAILURE;
 }

 close(fd);

 return EXIT_SUCCESS;
}
