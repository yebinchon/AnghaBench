
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OM_uint32 ;


 int GSS_C_REPLAY_FLAG ;
 int GSS_C_SEQUENCE_FLAG ;

OM_uint32
_gssapi_msg_order_f(OM_uint32 flags)
{
    return flags & (GSS_C_SEQUENCE_FLAG|GSS_C_REPLAY_FLAG);
}
