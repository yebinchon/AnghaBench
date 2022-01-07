
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_disconnect ) (char*,int) ;} ;


 int DO_DEFERRED_STORES ;
 TYPE_1__ current_target ;
 int stub1 (char*,int) ;

void
target_disconnect (char *args, int from_tty)
{




  (current_target.to_disconnect) (args, from_tty);
}
