
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_solib () ;
 scalar_t__ solib_cleanup_queued ;

__attribute__((used)) static void
do_clear_solib (void *dummy)
{
  solib_cleanup_queued = 0;
  clear_solib ();
}
