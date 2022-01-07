
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int gss_unwrap (int *,int ,int ,int ,int*,int *) ;

OM_uint32
gss_unseal(OM_uint32 *minor_status,
    gss_ctx_id_t context_handle,
    gss_buffer_t input_message_buffer,
    gss_buffer_t output_message_buffer,
    int *conf_state,
    int *qop_state)
{

 return (gss_unwrap(minor_status,
      context_handle, input_message_buffer,
      output_message_buffer, conf_state, (gss_qop_t *)qop_state));
}
