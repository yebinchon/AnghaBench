
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_lookup_symbol ) (char*,int *) ;} ;
typedef int CORE_ADDR ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_stdlog ;
 int stub1 (char*,int *) ;

__attribute__((used)) static int
debug_to_lookup_symbol (char *name, CORE_ADDR *addrp)
{
  int retval;

  retval = debug_target.to_lookup_symbol (name, addrp);

  fprintf_unfiltered (gdb_stdlog, "target_lookup_symbol (%s, xxx)\n", name);

  return retval;
}
