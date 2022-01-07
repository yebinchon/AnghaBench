
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ old_config_style ;

__attribute__((used)) static int
is_EOC(
 int ch
 )
{
 if ((old_config_style && (ch == '\n')) ||
     (!old_config_style && (ch == ';')))
  return 1;
 return 0;
}
