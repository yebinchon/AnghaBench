
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ to_shortname; } ;


 TYPE_1__ current_target ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static int
target_is_remote (void)
{
  if (current_target.to_shortname &&
      strcmp (current_target.to_shortname, "remote") == 0)
    return 1;
  else
    return 0;
}
