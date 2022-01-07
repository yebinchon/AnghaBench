
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int to_shortname; } ;


 TYPE_1__ current_target ;
 int error (char*,int ) ;

__attribute__((used)) static void
tcomplain (void)
{
  error ("You can't do that when your target is `%s'",
  current_target.to_shortname);
}
