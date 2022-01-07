
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int multicoredebug; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_7__ {TYPE_2__ cop0; TYPE_1__ hw_dbp; } ;
typedef TYPE_3__ cvmx_debug_core_context_t ;



__attribute__((used)) static void cvmx_debug_clear_status(volatile cvmx_debug_core_context_t *context)
{


    context->hw_dbp.status &= ~0x3fff;


    context->cop0.multicoredebug |= 1;
}
