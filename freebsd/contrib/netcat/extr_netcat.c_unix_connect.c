
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int ENAMETOOLONG ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int SOCK_STREAM ;
 int SUN_LEN (struct sockaddr_un*) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ uflag ;
 int unix_bind (int ) ;
 int unix_dg_tmp_socket ;

int
unix_connect(char *path)
{
 struct sockaddr_un sun;
 int s;

 if (uflag) {
  if ((s = unix_bind(unix_dg_tmp_socket)) < 0)
   return (-1);
 } else {
  if ((s = socket(AF_UNIX, SOCK_STREAM, 0)) < 0)
   return (-1);
 }
 (void)fcntl(s, F_SETFD, FD_CLOEXEC);

 memset(&sun, 0, sizeof(struct sockaddr_un));
 sun.sun_family = AF_UNIX;

 if (strlcpy(sun.sun_path, path, sizeof(sun.sun_path)) >=
     sizeof(sun.sun_path)) {
  close(s);
  errno = ENAMETOOLONG;
  return (-1);
 }
 if (connect(s, (struct sockaddr *)&sun, SUN_LEN(&sun)) < 0) {
  close(s);
  return (-1);
 }
 return (s);

}
