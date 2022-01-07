
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int gss_verify_mic (int *,int ,int ,int ,int *) ;

OM_uint32
gss_verify(OM_uint32 *minor_status,
    gss_ctx_id_t context_handle,
    gss_buffer_t message_buffer,
    gss_buffer_t token_buffer,
    int *qop_state)
{

 return (gss_verify_mic(minor_status,
  context_handle, message_buffer, token_buffer,
  (gss_qop_t *)qop_state));
}
