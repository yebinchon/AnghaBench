
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* dts_buffer; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_icookie_t ;
struct TYPE_5__ {int dtb_flags; int * dtb_tomax; } ;
typedef TYPE_2__ dtrace_buffer_t ;


 int DTRACEBUF_INACTIVE ;
 size_t curcpu ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;

__attribute__((used)) static void
dtrace_buffer_activate(dtrace_state_t *state)
{
 dtrace_buffer_t *buf;
 dtrace_icookie_t cookie = dtrace_interrupt_disable();

 buf = &state->dts_buffer[curcpu];

 if (buf->dtb_tomax != ((void*)0)) {







  buf->dtb_flags &= ~DTRACEBUF_INACTIVE;
 }

 dtrace_interrupt_enable(cookie);
}
