
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int up_silently_base (char*) ;

__attribute__((used)) static void
up_silently_command (char *count_exp, int from_tty)
{
  up_silently_base (count_exp);
}
