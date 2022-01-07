
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int fd ;


 int do_close_cleanup ;
 struct cleanup* make_cleanup (int ,int*) ;
 int* xmalloc (int) ;

struct cleanup *
make_cleanup_close (int fd)
{
  int *saved_fd = xmalloc (sizeof (fd));
  *saved_fd = fd;
  return make_cleanup (do_close_cleanup, saved_fd);
}
