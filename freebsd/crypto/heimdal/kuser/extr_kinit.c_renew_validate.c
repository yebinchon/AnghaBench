
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int renewable; int renew; int validate; int forwardable; int proxiable; scalar_t__ request_anonymous; } ;
struct TYPE_20__ {TYPE_3__ b; scalar_t__ i; } ;
typedef TYPE_5__ krb5_kdc_flags ;
typedef int krb5_error_code ;
typedef scalar_t__ krb5_deltat ;
struct TYPE_19__ {scalar_t__ endtime; } ;
struct TYPE_16__ {int forwardable; int proxiable; } ;
struct TYPE_17__ {TYPE_1__ b; } ;
struct TYPE_21__ {int client; TYPE_4__ times; TYPE_2__ flags; int server; } ;
typedef TYPE_6__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int in ;


 int KRB5_GC_CACHED ;
 scalar_t__ anonymous_flag ;
 scalar_t__ do_afslog ;
 int forwardable_flag ;
 int get_server (int ,int ,char const*,int *) ;
 scalar_t__ k_hasafs () ;
 int krb5_afslog (int ,int ,int *,int *) ;
 int krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_cc_initialize (int ,int ,int ) ;
 int krb5_cc_store_cred (int ,int ,TYPE_6__*) ;
 int krb5_free_cred_contents (int ,TYPE_6__*) ;
 int krb5_free_creds (int ,TYPE_6__*) ;
 int krb5_get_credentials (int ,int ,int ,TYPE_6__*,TYPE_6__**) ;
 int krb5_get_kdc_cred (int ,int ,TYPE_5__,int *,int *,TYPE_6__*,TYPE_6__**) ;
 int krb5_warn (int ,int,char*) ;
 int memset (TYPE_6__*,int ,int) ;
 int proxiable_flag ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
renew_validate(krb5_context context,
        int renew,
        int validate,
        krb5_ccache cache,
        const char *server,
        krb5_deltat life)
{
    krb5_error_code ret;
    krb5_creds in, *out = ((void*)0);
    krb5_kdc_flags flags;

    memset(&in, 0, sizeof(in));

    ret = krb5_cc_get_principal(context, cache, &in.client);
    if(ret) {
 krb5_warn(context, ret, "krb5_cc_get_principal");
 return ret;
    }
    ret = get_server(context, in.client, server, &in.server);
    if(ret) {
 krb5_warn(context, ret, "get_server");
 goto out;
    }

    if (renew) {




 krb5_get_credentials(context, KRB5_GC_CACHED, cache, &in, &out);
    }

    flags.i = 0;
    flags.b.renewable = flags.b.renew = renew;
    flags.b.validate = validate;

    if (forwardable_flag != -1)
 flags.b.forwardable = forwardable_flag;
    else if (out)
 flags.b.forwardable = out->flags.b.forwardable;

    if (proxiable_flag != -1)
 flags.b.proxiable = proxiable_flag;
    else if (out)
 flags.b.proxiable = out->flags.b.proxiable;

    if (anonymous_flag)
 flags.b.request_anonymous = anonymous_flag;
    if(life)
 in.times.endtime = time(((void*)0)) + life;

    if (out) {
 krb5_free_creds (context, out);
 out = ((void*)0);
    }


    ret = krb5_get_kdc_cred(context,
       cache,
       flags,
       ((void*)0),
       ((void*)0),
       &in,
       &out);
    if(ret) {
 krb5_warn(context, ret, "krb5_get_kdc_cred");
 goto out;
    }
    ret = krb5_cc_initialize(context, cache, in.client);
    if(ret) {
 krb5_free_creds (context, out);
 krb5_warn(context, ret, "krb5_cc_initialize");
 goto out;
    }
    ret = krb5_cc_store_cred(context, cache, out);

    if(ret == 0 && server == ((void*)0)) {


 if(do_afslog && k_hasafs())
     krb5_afslog(context, cache, ((void*)0), ((void*)0));

    }

    krb5_free_creds (context, out);
    if(ret) {
 krb5_warn(context, ret, "krb5_cc_store_cred");
 goto out;
    }
out:
    krb5_free_cred_contents(context, &in);
    return ret;
}
