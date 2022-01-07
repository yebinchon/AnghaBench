
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_11__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef int * krb5_rd_req_out_ctx ;
typedef int * krb5_rd_req_in_ctx ;
typedef int * krb5_principal ;
typedef int * krb5_keytab ;
typedef int krb5_keyblock ;
typedef int krb5_flags ;
typedef int krb5_error_code ;
struct TYPE_37__ {int data; int length; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef TYPE_3__* krb5_authenticator ;
typedef int gsskrb5_name ;
typedef TYPE_4__* gsskrb5_ctx ;
typedef TYPE_5__* gsskrb5_cred ;
typedef int gss_name_t ;
typedef int gss_cred_id_t ;
typedef int gss_channel_bindings_t ;
typedef TYPE_6__* gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_42__ {scalar_t__ cksumtype; } ;
struct TYPE_41__ {int value; int length; } ;
struct TYPE_40__ {int * principal; int * keytab; } ;
struct TYPE_39__ {int flags; int more_flags; int state; int lifetime; TYPE_10__* ticket; TYPE_11__* auth_context; int fwd_data; int target; int source; int service_keyblock; } ;
struct TYPE_38__ {TYPE_9__* cksum; } ;
struct TYPE_36__ {int endtime; } ;
struct TYPE_35__ {int keyblock; } ;
struct TYPE_34__ {TYPE_1__ ticket; int client; int server; } ;
typedef int OM_uint32 ;


 int ACCEPTOR_SUBKEY ;
 int ACCEPTOR_WAIT_FOR_DCESTYLE ;
 int AP_OPTS_MUTUAL_REQUIRED ;
 int AP_OPTS_USE_SUBKEY ;
 scalar_t__ CKSUMTYPE_GSSAPI ;
 int GSS_C_DELEG_FLAG ;
 int GSS_C_MUTUAL_FLAG ;
 int GSS_C_REPLAY_FLAG ;
 int GSS_C_SEQUENCE_FLAG ;
 int GSS_C_TRANS_FLAG ;
 int GSS_KRB5_MECHANISM ;
 int GSS_S_BAD_BINDINGS ;
 int GSS_S_BAD_SIG ;
 int GSS_S_COMPLETE ;
 int GSS_S_CONTINUE_NEEDED ;
 int GSS_S_FAILURE ;
 int IS_CFX ;
 scalar_t__ IS_DCE_STYLE (TYPE_4__*) ;
 int KRB5KRB_AP_ERR_SKEW ;
 int KRB5KRB_AP_ERR_TKT_NYV ;
 int KRB5_AUTH_CONTEXT_USE_SUBKEY ;
 int KRB5_KU_AP_REQ_AUTH_CKSUM ;
 int OPEN ;
 int _gss_DES3_get_mic_compat (int*,TYPE_4__*,int ) ;
 int _gsskrb5_decapsulate (int*,TYPE_6__* const,TYPE_2__*,char*,int ) ;
 int _gsskrb5_encapsulate (int*,TYPE_2__*,TYPE_6__*,char*,int ) ;
 int * _gsskrb5_keytab ;
 int _gsskrb5_lifetime_left (int*,int ,int ,int*) ;
 int _gsskrb5_verify_8003_checksum (int*,int const,TYPE_9__*,int*,int *) ;
 int _gsskrb5i_is_cfx (int ,TYPE_4__*,int) ;
 int gsskrb5_acceptor_ready (int*,TYPE_4__*,int ,int *) ;
 int krb5_auth_con_addflags (int ,TYPE_11__*,int ,int *) ;
 int krb5_auth_con_getauthenticator (int ,TYPE_11__*,TYPE_3__**) ;
 int krb5_auth_con_getremotesubkey (int ,TYPE_11__*,int **) ;
 int krb5_auth_con_setlocalsubkey (int ,TYPE_11__*,int *) ;
 int krb5_copy_principal (int ,int ,int *) ;
 int krb5_crypto_destroy (int ,int ) ;
 int krb5_crypto_init (int ,int ,int ,int *) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_free_authenticator (int ,TYPE_3__**) ;
 int krb5_free_keyblock (int ,int *) ;
 int krb5_mk_rep (int ,TYPE_11__*,TYPE_2__*) ;
 int krb5_rd_req_ctx (int ,TYPE_11__**,TYPE_2__*,int *,int *,int **) ;
 int krb5_rd_req_in_ctx_alloc (int ,int **) ;
 int krb5_rd_req_in_ctx_free (int ,int *) ;
 int krb5_rd_req_in_set_keytab (int ,int *,int *) ;
 int krb5_rd_req_out_ctx_free (int ,int *) ;
 int krb5_rd_req_out_get_ap_req_options (int ,int *,int*) ;
 int krb5_rd_req_out_get_keyblock (int ,int *,int *) ;
 int krb5_rd_req_out_get_ticket (int ,int *,TYPE_10__**) ;
 int krb5_verify_checksum (int ,int ,int ,int *,int ,TYPE_9__*) ;
 int send_error_token (int*,int ,int,int *,TYPE_2__*,TYPE_6__*) ;

__attribute__((used)) static OM_uint32
gsskrb5_acceptor_start(OM_uint32 * minor_status,
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
    krb5_error_code kret;
    OM_uint32 ret = GSS_S_COMPLETE;
    krb5_data indata;
    krb5_flags ap_options;
    krb5_keytab keytab = ((void*)0);
    int is_cfx = 0;
    const gsskrb5_cred acceptor_cred = (gsskrb5_cred)acceptor_cred_handle;




    ret = _gsskrb5_decapsulate (minor_status,
    input_token_buffer,
    &indata,
    "\x01\x00",
    GSS_KRB5_MECHANISM);

    if (ret) {

 indata.length = input_token_buffer->length;
 indata.data = input_token_buffer->value;
    }




    if (acceptor_cred == ((void*)0)) {
 if (_gsskrb5_keytab != ((void*)0))
     keytab = _gsskrb5_keytab;
    } else if (acceptor_cred->keytab != ((void*)0)) {
 keytab = acceptor_cred->keytab;
    }





    {
 krb5_rd_req_in_ctx in = ((void*)0);
 krb5_rd_req_out_ctx out = ((void*)0);
 krb5_principal server = ((void*)0);

 if (acceptor_cred)
     server = acceptor_cred->principal;

 kret = krb5_rd_req_in_ctx_alloc(context, &in);
 if (kret == 0)
     kret = krb5_rd_req_in_set_keytab(context, in, keytab);
 if (kret) {
     if (in)
  krb5_rd_req_in_ctx_free(context, in);
     *minor_status = kret;
     return GSS_S_FAILURE;
 }

 kret = krb5_rd_req_ctx(context,
          &ctx->auth_context,
          &indata,
          server,
          in, &out);
 krb5_rd_req_in_ctx_free(context, in);
 if (kret == KRB5KRB_AP_ERR_SKEW || kret == KRB5KRB_AP_ERR_TKT_NYV) {






     return send_error_token(minor_status, context, kret,
        server, &indata, output_token);
 } else if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }




 kret = krb5_rd_req_out_get_ap_req_options(context, out,
        &ap_options);
 if (kret == 0)
     kret = krb5_rd_req_out_get_ticket(context, out,
           &ctx->ticket);
 if (kret == 0)
     kret = krb5_rd_req_out_get_keyblock(context, out,
      &ctx->service_keyblock);
 ctx->lifetime = ctx->ticket->ticket.endtime;

 krb5_rd_req_out_ctx_free(context, out);
 if (kret) {
     ret = GSS_S_FAILURE;
     *minor_status = kret;
     return ret;
 }
    }






    kret = krb5_copy_principal(context,
          ctx->ticket->client,
          &ctx->source);
    if (kret) {
 ret = GSS_S_FAILURE;
 *minor_status = kret;
    }

    kret = krb5_copy_principal(context,
          ctx->ticket->server,
          &ctx->target);
    if (kret) {
 ret = GSS_S_FAILURE;
 *minor_status = kret;
 return ret;
    }





    ret = _gss_DES3_get_mic_compat(minor_status, ctx, context);
    if (ret)
 return ret;

    if (src_name != ((void*)0)) {
 kret = krb5_copy_principal (context,
        ctx->ticket->client,
        (gsskrb5_name*)src_name);
 if (kret) {
     ret = GSS_S_FAILURE;
     *minor_status = kret;
     return ret;
 }
    }





    {
 krb5_authenticator authenticator;

 kret = krb5_auth_con_getauthenticator(context,
           ctx->auth_context,
           &authenticator);
 if(kret) {
     ret = GSS_S_FAILURE;
     *minor_status = kret;
     return ret;
 }

 if (authenticator->cksum == ((void*)0)) {
     krb5_free_authenticator(context, &authenticator);
     *minor_status = 0;
     return GSS_S_BAD_BINDINGS;
 }

        if (authenticator->cksum->cksumtype == CKSUMTYPE_GSSAPI) {
            ret = _gsskrb5_verify_8003_checksum(minor_status,
      input_chan_bindings,
      authenticator->cksum,
      &ctx->flags,
      &ctx->fwd_data);

     krb5_free_authenticator(context, &authenticator);
     if (ret) {
  return ret;
     }
        } else {
     krb5_crypto crypto;

     kret = krb5_crypto_init(context,
        ctx->auth_context->keyblock,
        0, &crypto);
     if(kret) {
  krb5_free_authenticator(context, &authenticator);

  ret = GSS_S_FAILURE;
  *minor_status = kret;
  return ret;
     }






     kret = krb5_verify_checksum(context,
     crypto, KRB5_KU_AP_REQ_AUTH_CKSUM, ((void*)0), 0,
     authenticator->cksum);
     krb5_free_authenticator(context, &authenticator);
     krb5_crypto_destroy(context, crypto);

     if(kret) {
  ret = GSS_S_BAD_SIG;
  *minor_status = kret;
  return ret;
     }





      ctx->flags = GSS_C_REPLAY_FLAG | GSS_C_SEQUENCE_FLAG;
     if (ap_options & AP_OPTS_MUTUAL_REQUIRED)
  ctx->flags |= GSS_C_MUTUAL_FLAG;
        }
    }

    if(ctx->flags & GSS_C_MUTUAL_FLAG) {
 krb5_data outbuf;
 int use_subkey = 0;

 _gsskrb5i_is_cfx(context, ctx, 1);
 is_cfx = (ctx->more_flags & IS_CFX);

 if (is_cfx || (ap_options & AP_OPTS_USE_SUBKEY)) {
     use_subkey = 1;
 } else {
     krb5_keyblock *rkey;





     kret = krb5_auth_con_getremotesubkey(context,
       ctx->auth_context,
       &rkey);
     if (kret == 0) {
  kret = krb5_auth_con_setlocalsubkey(context,
          ctx->auth_context,
          rkey);
  if (kret == 0)
      use_subkey = 1;
  krb5_free_keyblock(context, rkey);
     }
 }
 if (use_subkey) {
     ctx->more_flags |= ACCEPTOR_SUBKEY;
     krb5_auth_con_addflags(context, ctx->auth_context,
       KRB5_AUTH_CONTEXT_USE_SUBKEY,
       ((void*)0));
 }

 kret = krb5_mk_rep(context,
      ctx->auth_context,
      &outbuf);
 if (kret) {
     *minor_status = kret;
     return GSS_S_FAILURE;
 }

 if (IS_DCE_STYLE(ctx)) {
     output_token->length = outbuf.length;
     output_token->value = outbuf.data;
 } else {
     ret = _gsskrb5_encapsulate(minor_status,
           &outbuf,
           output_token,
           "\x02\x00",
           GSS_KRB5_MECHANISM);
     krb5_data_free (&outbuf);
     if (ret)
  return ret;
 }
    }

    ctx->flags |= GSS_C_TRANS_FLAG;



    ctx->lifetime = ctx->ticket->ticket.endtime;
    ctx->more_flags |= OPEN;

    if (mech_type)
 *mech_type = GSS_KRB5_MECHANISM;

    if (time_rec) {
 ret = _gsskrb5_lifetime_left(minor_status,
         context,
         ctx->lifetime,
         time_rec);
 if (ret) {
     return ret;
 }
    }





    if (IS_DCE_STYLE(ctx)) {




 if (ret_flags)
     *ret_flags = (ctx->flags & ~GSS_C_DELEG_FLAG);

 ctx->state = ACCEPTOR_WAIT_FOR_DCESTYLE;
 return GSS_S_CONTINUE_NEEDED;
    }

    ret = gsskrb5_acceptor_ready(minor_status, ctx, context,
     delegated_cred_handle);

    if (ret_flags)
 *ret_flags = ctx->flags;

    return ret;
}
