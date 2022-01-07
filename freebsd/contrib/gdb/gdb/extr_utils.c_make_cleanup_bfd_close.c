
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int bfd ;


 int do_bfd_close_cleanup ;
 struct cleanup* make_cleanup (int ,int *) ;

struct cleanup *
make_cleanup_bfd_close (bfd *abfd)
{
  return make_cleanup (do_bfd_close_cleanup, abfd);
}
