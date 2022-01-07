
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_debug_core_context_t ;
struct TYPE_2__ {int volatile* contextes; } ;


 TYPE_1__* cvmx_debug_globals ;
 size_t cvmx_get_core_num () ;

__attribute__((used)) static volatile cvmx_debug_core_context_t *cvmx_debug_core_context(void)
{
    return &cvmx_debug_globals->contextes[cvmx_get_core_num()];
}
