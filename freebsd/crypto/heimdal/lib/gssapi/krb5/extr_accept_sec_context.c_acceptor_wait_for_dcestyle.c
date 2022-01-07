
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_9__ {int data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_ap_rep_enc_part ;
typedef scalar_t__ int32_t ;
typedef int gsskrb5_name ;
typedef TYPE_2__* gsskrb5_ctx ;
typedef int gss_name_t ;
typedef int gss_cred_id_t ;
typedef int gss_channel_bindings_t ;
typedef TYPE_3__* gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_11__ {int value; int length; } ;
struct TYPE_10__ {scalar_t__ flags; int auth_context; int source; int lifetime; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ GSS_S_UNSEQ_TOKEN ;
 int KRB5_AUTH_CONTEXT_DO_TIME ;
 scalar_t__ _gsskrb5_lifetime_left (scalar_t__*,int ,int ,scalar_t__*) ;
 scalar_t__ gsskrb5_acceptor_ready (scalar_t__*,TYPE_2__*,int ,int *) ;
 scalar_t__ krb5_auth_con_getlocalseqnumber (int ,int ,scalar_t__*) ;
 scalar_t__ krb5_auth_con_getremoteseqnumber (int ,int ,scalar_t__*) ;
 int krb5_auth_con_removeflags (int ,int ,int ,scalar_t__*) ;
 int krb5_auth_con_setflags (int ,int ,scalar_t__) ;
 scalar_t__ krb5_auth_con_setremoteseqnumber (int ,int ,scalar_t__) ;
 scalar_t__ krb5_copy_principal (int ,int ,int *) ;
 int krb5_free_ap_rep_enc_part (int ,int *) ;
 scalar_t__ krb5_rd_rep (int ,int ,TYPE_1__*,int **) ;

__attribute__((used)) static OM_uint32
acceptor_wait_for_dcestyle(OM_uint32 * minor_status,
      gsskrb5_ctx ctx,
      krb5_context context,
      const gss_cred_id_t acceptor_cred_handle,
      const gss_buffer_t input_token_buffer,
      const gss_channel_bindings_t input_chan_bindings,
      gss_name_t * src_name,
      gss_OID * mech_type,
      gss_buffer_t output_token,
      OM_uint32 * ret_flags,
      OM_uint32 * time_rec,
      gss_cred_id_t * delegated_cred_handle)
{
    OM_uint32 ret;
    krb5_error_code kret;
    krb5_data inbuf;
    int32_t r_seq_number, l_seq_number;





    inbuf.length = input_token_buffer->length;
    inbuf.data = input_token_buffer->value;






    {
 kret = krb5_auth_con_getlocalseqnumber(context,
            ctx->auth_context,
            &l_seq_number);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }

 kret = krb5_auth_con_getremoteseqnumber(context,
      ctx->auth_context,
      &r_seq_number);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }

 kret = krb5_auth_con_setremoteseqnumber(context,
      ctx->auth_context,
      l_seq_number);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }
    }






    {
 krb5_ap_rep_enc_part *repl;
 int32_t auth_flags;

 krb5_auth_con_removeflags(context,
      ctx->auth_context,
      KRB5_AUTH_CONTEXT_DO_TIME,
      &auth_flags);

 kret = krb5_rd_rep(context, ctx->auth_context, &inbuf, &repl);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }
 krb5_free_ap_rep_enc_part(context, repl);
 krb5_auth_con_setflags(context, ctx->auth_context, auth_flags);
    }


    {
 OM_uint32 lifetime_rec;

 ret = _gsskrb5_lifetime_left(minor_status,
         context,
         ctx->lifetime,
         &lifetime_rec);
 if (ret) {
     return ret;
 }
 if (lifetime_rec == 0) {
     return GSS_S_CONTEXT_EXPIRED;
 }

 if (time_rec) *time_rec = lifetime_rec;
    }


    if (ret_flags) *ret_flags = ctx->flags;

    if (src_name) {
 kret = krb5_copy_principal(context,
       ctx->source,
       (gsskrb5_name*)src_name);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }
    }







    {
 int32_t tmp_r_seq_number, tmp_l_seq_number;

 kret = krb5_auth_con_getremoteseqnumber(context,
      ctx->auth_context,
      &tmp_r_seq_number);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }

 kret = krb5_auth_con_getlocalseqnumber(context,
            ctx->auth_context,
            &tmp_l_seq_number);
 if (kret) {

     *minor_status = kret;
     return GSS_S_FAILURE;
 }




 if (tmp_r_seq_number != tmp_l_seq_number) {
     return GSS_S_UNSEQ_TOKEN;
 }
    }





    {
 kret = krb5_auth_con_setremoteseqnumber(context,
      ctx->auth_context,
      r_seq_number);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }
    }

    return gsskrb5_acceptor_ready(minor_status, ctx, context,
      delegated_cred_handle);
}
