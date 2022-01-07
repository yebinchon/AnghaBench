
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int gss_wrap (int *,int ,int,int,int ,int*,int ) ;

OM_uint32
gss_seal(OM_uint32 *minor_status,
    gss_ctx_id_t context_handle,
    int conf_req_flag,
    int qop_req,
    gss_buffer_t input_message_buffer,
    int *conf_state,
    gss_buffer_t output_message_buffer)
{

 return (gss_wrap(minor_status,
      context_handle, conf_req_flag, qop_req,
      input_message_buffer, conf_state,
      output_message_buffer));
}
