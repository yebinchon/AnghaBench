
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int krb5_principal ;
typedef int krb5_preauthtype ;
typedef TYPE_4__* krb5_init_creds_context ;
struct TYPE_21__ {int flags; int etype_list_length; int preauth_list_length; int anonymous; int preauth_list; int etype_list; TYPE_2__* opt_private; int * address_list; int proxiable; int forwardable; } ;
typedef TYPE_5__ krb5_get_init_creds_opt ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
typedef scalar_t__ krb5_deltat ;
typedef int krb5_context ;
struct TYPE_19__ {int canonicalize; int postdated; int renewable; int request_anonymous; int proxiable; int forwardable; } ;
struct TYPE_17__ {scalar_t__ renew_till; } ;
struct TYPE_16__ {TYPE_1__ times; } ;
struct TYPE_20__ {int req_pac; int ic_flags; TYPE_3__ flags; int * pre_auth_types; int * etypes; int * addrs; TYPE_12__ cred; int * keyproc; int pk_init_ctx; } ;
struct TYPE_18__ {int req_pac; int flags; int addressless; int pk_init_ctx; int * key_proc; scalar_t__ password; } ;


 scalar_t__ ENOMEM ;
 int ETYPE_NULL ;
 int KRB5_GET_INIT_CREDS_OPT_ADDRESS_LIST ;
 int KRB5_GET_INIT_CREDS_OPT_ANONYMOUS ;
 int KRB5_GET_INIT_CREDS_OPT_ETYPE_LIST ;
 int KRB5_GET_INIT_CREDS_OPT_FORWARDABLE ;
 int KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST ;
 int KRB5_GET_INIT_CREDS_OPT_PROXIABLE ;
 int KRB5_INIT_CREDS_CANONICALIZE ;



 scalar_t__ KRB5_NT_ENTERPRISE_PRINCIPAL ;
 int KRB5_PADATA_NONE ;
 int N_ (char*,char*) ;
 int * default_s2k_func ;
 int free (int *) ;
 scalar_t__ init_cred (int ,TYPE_12__*,int ,scalar_t__,TYPE_5__*) ;
 int krb5_get_init_creds_opt_alloc (int ,TYPE_5__**) ;
 int krb5_get_init_creds_opt_free (int ,TYPE_5__*) ;
 int krb5_get_init_creds_opt_set_default_flags (int ,int *,char const*,TYPE_5__*) ;
 scalar_t__ krb5_init_creds_set_password (int ,TYPE_4__*,scalar_t__) ;
 scalar_t__ krb5_init_creds_set_service (int ,TYPE_4__*,int *) ;
 char* krb5_principal_get_realm (int ,int ) ;
 scalar_t__ krb5_principal_get_type (int ,int ) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int * malloc (int) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int no_addrs ;

__attribute__((used)) static krb5_error_code
get_init_creds_common(krb5_context context,
        krb5_principal client,
        krb5_deltat start_time,
        krb5_get_init_creds_opt *options,
        krb5_init_creds_context ctx)
{
    krb5_get_init_creds_opt *default_opt = ((void*)0);
    krb5_error_code ret;
    krb5_enctype *etypes;
    krb5_preauthtype *pre_auth_types;

    memset(ctx, 0, sizeof(*ctx));

    if (options == ((void*)0)) {
 const char *realm = krb5_principal_get_realm(context, client);

        krb5_get_init_creds_opt_alloc (context, &default_opt);
 options = default_opt;
 krb5_get_init_creds_opt_set_default_flags(context, ((void*)0), realm, options);
    }

    if (options->opt_private) {
 if (options->opt_private->password) {
     ret = krb5_init_creds_set_password(context, ctx,
            options->opt_private->password);
     if (ret)
  goto out;
 }

 ctx->keyproc = options->opt_private->key_proc;
 ctx->req_pac = options->opt_private->req_pac;
 ctx->pk_init_ctx = options->opt_private->pk_init_ctx;
 ctx->ic_flags = options->opt_private->flags;
    } else
 ctx->req_pac = 128;

    if (ctx->keyproc == ((void*)0))
 ctx->keyproc = default_s2k_func;


    if ((ctx->ic_flags & KRB5_INIT_CREDS_CANONICALIZE) ||
 krb5_principal_get_type(context, client) == KRB5_NT_ENTERPRISE_PRINCIPAL)
 ctx->flags.canonicalize = 1;

    ctx->pre_auth_types = ((void*)0);
    ctx->addrs = ((void*)0);
    ctx->etypes = ((void*)0);
    ctx->pre_auth_types = ((void*)0);

    ret = init_cred(context, &ctx->cred, client, start_time, options);
    if (ret) {
 if (default_opt)
     krb5_get_init_creds_opt_free(context, default_opt);
 return ret;
    }

    ret = krb5_init_creds_set_service(context, ctx, ((void*)0));
    if (ret)
 goto out;

    if (options->flags & KRB5_GET_INIT_CREDS_OPT_FORWARDABLE)
 ctx->flags.forwardable = options->forwardable;

    if (options->flags & KRB5_GET_INIT_CREDS_OPT_PROXIABLE)
 ctx->flags.proxiable = options->proxiable;

    if (start_time)
 ctx->flags.postdated = 1;
    if (ctx->cred.times.renew_till)
 ctx->flags.renewable = 1;
    if (options->flags & KRB5_GET_INIT_CREDS_OPT_ADDRESS_LIST) {
 ctx->addrs = options->address_list;
    } else if (options->opt_private) {
 switch (options->opt_private->addressless) {
 case 128:

     ctx->addrs = &no_addrs;



     break;
 case 130:
     ctx->addrs = ((void*)0);
     break;
 case 129:
     ctx->addrs = &no_addrs;
     break;
 }
    }
    if (options->flags & KRB5_GET_INIT_CREDS_OPT_ETYPE_LIST) {
 if (ctx->etypes)
     free(ctx->etypes);

 etypes = malloc((options->etype_list_length + 1)
   * sizeof(krb5_enctype));
 if (etypes == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }
 memcpy (etypes, options->etype_list,
  options->etype_list_length * sizeof(krb5_enctype));
 etypes[options->etype_list_length] = ETYPE_NULL;
 ctx->etypes = etypes;
    }
    if (options->flags & KRB5_GET_INIT_CREDS_OPT_PREAUTH_LIST) {
 pre_auth_types = malloc((options->preauth_list_length + 1)
    * sizeof(krb5_preauthtype));
 if (pre_auth_types == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }
 memcpy (pre_auth_types, options->preauth_list,
  options->preauth_list_length * sizeof(krb5_preauthtype));
 pre_auth_types[options->preauth_list_length] = KRB5_PADATA_NONE;
 ctx->pre_auth_types = pre_auth_types;
    }
    if (options->flags & KRB5_GET_INIT_CREDS_OPT_ANONYMOUS)
 ctx->flags.request_anonymous = options->anonymous;
    if (default_opt)
        krb5_get_init_creds_opt_free(context, default_opt);
    return 0;
 out:
    if (default_opt)
 krb5_get_init_creds_opt_free(context, default_opt);
    return ret;
}
