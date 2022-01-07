
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct futx {int dummy; } ;


 int O_CLOEXEC ;
 int O_RDWR ;
 int _PATH_UTX_LASTLOGIN ;
 int _close (int) ;
 int _fstat (int,struct stat*) ;
 int _open (int ,int,int) ;
 int ftruncate (int,int ) ;

__attribute__((used)) static void
utx_lastlogin_upgrade(void)
{
 struct stat sb;
 int fd;

 fd = _open(_PATH_UTX_LASTLOGIN, O_RDWR|O_CLOEXEC, 0644);
 if (fd < 0)
  return;






 if (_fstat(fd, &sb) != -1 && sb.st_size % sizeof(struct futx) != 0)
  ftruncate(fd, 0);
 _close(fd);
}
