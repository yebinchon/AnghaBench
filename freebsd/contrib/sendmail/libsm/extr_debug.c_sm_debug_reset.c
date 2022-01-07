
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int debug_level; struct TYPE_3__* debug_next; } ;
typedef TYPE_1__ SM_DEBUG_T ;


 int SM_DEBUG_UNKNOWN ;
 TYPE_1__* SmDebugInitialized ;

__attribute__((used)) static void
sm_debug_reset()
{
 SM_DEBUG_T *debug;

 for (debug = SmDebugInitialized;
      debug != ((void*)0);
      debug = debug->debug_next)
 {
  debug->debug_level = SM_DEBUG_UNKNOWN;
 }
 SmDebugInitialized = ((void*)0);
}
