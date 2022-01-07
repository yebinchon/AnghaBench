
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_close (void*) ;

__attribute__((used)) static void
do_bfd_close_cleanup (void *arg)
{
  bfd_close (arg);
}
