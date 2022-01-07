
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 scalar_t__ in_non_blocking_mode ;
 int stdin ;
 int unset_nonblock (int ) ;

__attribute__((used)) static void
leave_non_blocking(void)
{
 if (in_non_blocking_mode) {
  unset_nonblock(fileno(stdin));
  in_non_blocking_mode = 0;
 }
}
