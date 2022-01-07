
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* shutdown ) (TYPE_1__*) ;} ;


 scalar_t__ callbacks_initialized ;
 TYPE_1__ gdb_callback ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
end_callbacks (void)
{
  if (callbacks_initialized)
    {
      gdb_callback.shutdown (&gdb_callback);
      callbacks_initialized = 0;
    }
}
