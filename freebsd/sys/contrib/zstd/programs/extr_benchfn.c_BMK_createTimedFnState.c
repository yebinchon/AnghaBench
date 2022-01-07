
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BMK_timedFnState_t ;


 int BMK_resetTimedFnState (int * const,unsigned int,unsigned int) ;
 scalar_t__ malloc (int) ;

BMK_timedFnState_t* BMK_createTimedFnState(unsigned total_ms, unsigned run_ms)
{
    BMK_timedFnState_t* const r = (BMK_timedFnState_t*)malloc(sizeof(*r));
    if (r == ((void*)0)) return ((void*)0);
    BMK_resetTimedFnState(r, total_ms, run_ms);
    return r;
}
