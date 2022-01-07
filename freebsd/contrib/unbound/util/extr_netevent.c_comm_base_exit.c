
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_base {TYPE_1__* eb; } ;
struct TYPE_2__ {int base; } ;


 int log_err (char*) ;
 scalar_t__ ub_event_base_loopexit (int ) ;

void comm_base_exit(struct comm_base* b)
{
 if(ub_event_base_loopexit(b->eb->base) != 0) {
  log_err("Could not loopexit");
 }
}
