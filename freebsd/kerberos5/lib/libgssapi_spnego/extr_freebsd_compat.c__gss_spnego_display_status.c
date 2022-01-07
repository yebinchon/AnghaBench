
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_buffer_t ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 int GSS_S_FAILURE ;

OM_uint32 _gss_spnego_display_status
           (OM_uint32 * minor_status,
            OM_uint32 status_value,
            int status_type,
            const gss_OID mech_type,
            OM_uint32 * message_context,
            gss_buffer_t status_string
           )
{
    return GSS_S_FAILURE;
}
