
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_cred_usage_t ;
typedef int gss_cred_id_t ;
typedef int gss_OID_set ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 int gss_add_cred (int *,int const,int const,int const,int ,int ,int ,int *,int *,int *,int *) ;

OM_uint32 _gss_spnego_add_cred (
            OM_uint32 * minor_status,
            const gss_cred_id_t input_cred_handle,
            const gss_name_t desired_name,
            const gss_OID desired_mech,
            gss_cred_usage_t cred_usage,
            OM_uint32 initiator_time_req,
            OM_uint32 acceptor_time_req,
            gss_cred_id_t * output_cred_handle,
            gss_OID_set * actual_mechs,
            OM_uint32 * initiator_time_rec,
            OM_uint32 * acceptor_time_rec
           )
{
 return gss_add_cred(minor_status,
                       input_cred_handle,
                       desired_name,
                       desired_mech,
                       cred_usage,
                       initiator_time_req,
                       acceptor_time_req,
                       output_cred_handle,
                       actual_mechs,
                       initiator_time_rec,
                       acceptor_time_rec);
}
