
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int gss_get_mic (int *,int ,int,int ,int ) ;

OM_uint32
gss_sign(OM_uint32 *minor_status,
    gss_ctx_id_t context_handle,
    int qop_req,
    gss_buffer_t message_buffer,
    gss_buffer_t message_token)
{

 return gss_get_mic(minor_status,
     context_handle, qop_req, message_buffer, message_token);
}
