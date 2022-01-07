
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {int dummy; } ;
typedef enum exception_event_kind { ____Placeholder_exception_event_kind } exception_event_kind ;
struct TYPE_2__ {struct symtab_and_line* (* to_enable_exception_callback ) (int,int) ;} ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,int,int) ;
 int gdb_stdlog ;
 struct symtab_and_line* stub1 (int,int) ;

__attribute__((used)) static struct symtab_and_line *
debug_to_enable_exception_callback (enum exception_event_kind kind, int enable)
{
  struct symtab_and_line *result;
  result = debug_target.to_enable_exception_callback (kind, enable);
  fprintf_unfiltered (gdb_stdlog,
        "target get_exception_callback_sal (%d, %d)\n",
        kind, enable);
  return result;
}
