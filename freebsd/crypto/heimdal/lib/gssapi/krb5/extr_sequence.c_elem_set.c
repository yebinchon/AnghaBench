
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_msg_order {unsigned int jitter_window; int * elem; } ;
typedef int OM_uint32 ;



__attribute__((used)) static void
elem_set(struct gss_msg_order *o, unsigned int slot, OM_uint32 val)
{
    o->elem[slot % o->jitter_window] = val;
}
