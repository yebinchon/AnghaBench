
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_msg_order {unsigned int jitter_window; unsigned int length; int * elem; } ;
typedef int OM_uint32 ;


 int assert (int) ;
 int elem_set (struct gss_msg_order*,unsigned int,int ) ;
 int memmove (int *,int *,unsigned int) ;

__attribute__((used)) static void
elem_insert(struct gss_msg_order *o,
     unsigned int after_slot,
     OM_uint32 seq_num)
{
    assert(o->jitter_window > after_slot);

    if (o->length > after_slot)
 memmove(&o->elem[after_slot + 1], &o->elem[after_slot],
  (o->length - after_slot - 1) * sizeof(o->elem[0]));

    elem_set(o, after_slot, seq_num);

    if (o->length < o->jitter_window)
 o->length++;
}
