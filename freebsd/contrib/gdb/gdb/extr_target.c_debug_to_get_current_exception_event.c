
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exception_event_record {int dummy; } ;
struct TYPE_2__ {struct exception_event_record* (* to_get_current_exception_event ) () ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 struct exception_event_record* stub1 () ;

__attribute__((used)) static struct exception_event_record *
debug_to_get_current_exception_event (void)
{
  struct exception_event_record *result;
  result = debug_target.to_get_current_exception_event ();
  fprintf_unfiltered (gdb_stdlog, "target get_current_exception_event ()\n");
  return result;
}
