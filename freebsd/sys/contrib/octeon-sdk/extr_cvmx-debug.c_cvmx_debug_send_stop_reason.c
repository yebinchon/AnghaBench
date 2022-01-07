
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ddbl; scalar_t__ ddbs; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_debug_register_t ;
struct TYPE_8__ {scalar_t__ status; } ;
struct TYPE_10__ {TYPE_2__ hw_dbp; } ;
typedef TYPE_4__ cvmx_debug_core_context_t ;


 int cvmx_debug_putpacket_hexint (char*,int) ;
 int cvmx_debug_putpacket_noformat (char*) ;

__attribute__((used)) static void cvmx_debug_send_stop_reason(cvmx_debug_register_t *debug_reg, volatile cvmx_debug_core_context_t *context)
{

    if (debug_reg->s.ddbs || debug_reg->s.ddbl)
        cvmx_debug_putpacket_hexint("T8:", (int) context->hw_dbp.status);
    else
        cvmx_debug_putpacket_noformat("T9");
}
