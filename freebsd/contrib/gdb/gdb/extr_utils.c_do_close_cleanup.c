
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int xfree (int*) ;

__attribute__((used)) static void
do_close_cleanup (void *arg)
{
  int *fd = arg;
  close (*fd);
  xfree (fd);
}
