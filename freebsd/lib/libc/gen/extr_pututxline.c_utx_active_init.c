
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futx {int dummy; } ;


 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int _PATH_UTX_ACTIVE ;
 int _close (int) ;
 int _open (int ,int,int) ;
 int _write (int,struct futx const*,int) ;

__attribute__((used)) static void
utx_active_init(const struct futx *fu)
{
 int fd;


 fd = _open(_PATH_UTX_ACTIVE, O_CREAT|O_RDWR|O_TRUNC, 0644);
 if (fd < 0)
  return;
 _write(fd, fu, sizeof(*fu));
 _close(fd);
}
