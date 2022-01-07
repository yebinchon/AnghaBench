
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_base {TYPE_1__* eb; } ;
struct TYPE_2__ {int base; } ;


 int errno ;
 int fatal_exit (char*,int,int ) ;
 int strerror (int ) ;
 int ub_event_base_dispatch (int ) ;

void
comm_base_dispatch(struct comm_base* b)
{
 int retval;
 retval = ub_event_base_dispatch(b->eb->base);
 if(retval < 0) {
  fatal_exit("event_dispatch returned error %d, "
   "errno is %s", retval, strerror(errno));
 }
}
