
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int volatile depc; int volatile cause; int volatile badvaddr; int volatile status; } ;
struct TYPE_5__ {TYPE_1__ cop0; int volatile hi; int volatile lo; int volatile* regs; } ;
typedef TYPE_2__ cvmx_debug_core_context_t ;



__attribute__((used)) static volatile uint64_t *cvmx_debug_regnum_to_context_ref(int regnum, volatile cvmx_debug_core_context_t *context)
{

    if (regnum < 32)
        return &context->regs[regnum];
    switch (regnum)
    {
        case 32: return &context->cop0.status;
        case 33: return &context->lo;
        case 34: return &context->hi;
        case 35: return &context->cop0.badvaddr;
        case 36: return &context->cop0.cause;
        case 37: return &context->cop0.depc;
        default: return ((void*)0);
    }
}
