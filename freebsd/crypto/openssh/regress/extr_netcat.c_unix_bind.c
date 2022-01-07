
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int ENAMETOOLONG ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SUN_LEN (struct sockaddr_un*) ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int errno ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ uflag ;

int
unix_bind(char *path)
{
 struct sockaddr_un sun_sa;
 int s;


 if ((s = socket(AF_UNIX, uflag ? SOCK_DGRAM : SOCK_STREAM,
      0)) < 0)
  return (-1);

 memset(&sun_sa, 0, sizeof(struct sockaddr_un));
 sun_sa.sun_family = AF_UNIX;

 if (strlcpy(sun_sa.sun_path, path, sizeof(sun_sa.sun_path)) >=
     sizeof(sun_sa.sun_path)) {
  close(s);
  errno = ENAMETOOLONG;
  return (-1);
 }

 if (bind(s, (struct sockaddr *)&sun_sa, SUN_LEN(&sun_sa)) < 0) {
  close(s);
  return (-1);
 }
 return (s);
}
