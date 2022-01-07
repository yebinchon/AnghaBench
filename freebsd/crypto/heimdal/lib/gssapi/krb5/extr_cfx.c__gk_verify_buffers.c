
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsskrb5_ctx ;
typedef int gss_iov_buffer_desc ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ EINVAL ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ IS_DCE_STYLE (int const) ;

OM_uint32
_gk_verify_buffers(OM_uint32 *minor_status,
     const gsskrb5_ctx ctx,
     const gss_iov_buffer_desc *header,
     const gss_iov_buffer_desc *padding,
     const gss_iov_buffer_desc *trailer)
{
    if (header == ((void*)0)) {
 *minor_status = EINVAL;
 return GSS_S_FAILURE;
    }

    if (IS_DCE_STYLE(ctx)) {



 if (padding) {
     *minor_status = EINVAL;
     return GSS_S_FAILURE;
 }
 if (trailer) {
     *minor_status = EINVAL;
     return GSS_S_FAILURE;
 }
    } else {



 if (padding == ((void*)0)) {
     *minor_status = EINVAL;
     return GSS_S_FAILURE;
 }
    }

    *minor_status = 0;
    return GSS_S_COMPLETE;
}
