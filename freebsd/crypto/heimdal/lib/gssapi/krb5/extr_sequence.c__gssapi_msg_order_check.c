
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_msg_order {int flags; int* elem; int first_seq; int length; } ;
typedef int OM_uint32 ;


 int GSS_C_REPLAY_FLAG ;
 int GSS_C_SEQUENCE_FLAG ;
 int GSS_S_COMPLETE ;
 int GSS_S_DUPLICATE_TOKEN ;
 int GSS_S_FAILURE ;
 int GSS_S_GAP_TOKEN ;
 int GSS_S_OLD_TOKEN ;
 int GSS_S_UNSEQ_TOKEN ;
 int assert (int) ;
 int elem_insert (struct gss_msg_order*,size_t,int) ;

OM_uint32
_gssapi_msg_order_check(struct gss_msg_order *o, OM_uint32 seq_num)
{
    OM_uint32 r;
    size_t i;

    if (o == ((void*)0))
 return GSS_S_COMPLETE;

    if ((o->flags & (GSS_C_REPLAY_FLAG|GSS_C_SEQUENCE_FLAG)) == 0)
 return GSS_S_COMPLETE;


    if (o->elem[0] == seq_num - 1) {
 elem_insert(o, 0, seq_num);
 return GSS_S_COMPLETE;
    }

    r = (o->flags & (GSS_C_REPLAY_FLAG|GSS_C_SEQUENCE_FLAG))==GSS_C_REPLAY_FLAG;



    if (seq_num > o->elem[0]
 || seq_num < o->first_seq
 || o->length == 0)
    {
 elem_insert(o, 0, seq_num);
 if (r) {
     return GSS_S_COMPLETE;
 } else {
     return GSS_S_GAP_TOKEN;
 }
    }

    assert(o->length > 0);


    if (seq_num < o->elem[o->length - 1]) {
 if (r)
     return(GSS_S_OLD_TOKEN);
 else
     return(GSS_S_UNSEQ_TOKEN);
    }

    if (seq_num == o->elem[o->length - 1]) {
 return GSS_S_DUPLICATE_TOKEN;
    }

    for (i = 0; i < o->length - 1; i++) {
 if (o->elem[i] == seq_num)
     return GSS_S_DUPLICATE_TOKEN;
 if (o->elem[i + 1] < seq_num && o->elem[i] < seq_num) {
     elem_insert(o, i, seq_num);
     if (r)
  return GSS_S_COMPLETE;
     else
  return GSS_S_UNSEQ_TOKEN;
 }
    }

    return GSS_S_FAILURE;
}
