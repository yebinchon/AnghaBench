
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pagination_enabled ;

__attribute__((used)) static void
pagination_off_command (char *arg, int from_tty)
{
  pagination_enabled = 0;
}
