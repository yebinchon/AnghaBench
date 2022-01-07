
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef void* krb5_principal ;
struct TYPE_12__ {scalar_t__ i; } ;
typedef TYPE_3__ krb5_kdc_flags ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_10__ {scalar_t__ initial; } ;
struct TYPE_11__ {TYPE_1__ b; } ;
struct TYPE_13__ {TYPE_2__ flags; void* server; void* client; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
typedef int * krb5_ccache ;
typedef int in ;


 int KRB5_GC_CACHED ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_default (int ,int **) ;
 scalar_t__ krb5_cc_get_principal (int ,int *,void**) ;
 int krb5_free_creds (int ,TYPE_4__*) ;
 int krb5_free_principal (int ,void*) ;
 scalar_t__ krb5_get_credentials_with_flags (int ,int ,TYPE_3__,int *,TYPE_4__*,TYPE_4__**) ;
 scalar_t__ krb5_make_principal (int ,void**,int *,char const*,char*,int *) ;
 char* krb5_principal_get_comp_string (int ,void*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static krb5_error_code
get_cache_principal(krb5_context context,
      krb5_ccache *id,
      krb5_principal *client)
{
    krb5_error_code ret;
    const char *name, *inst;
    krb5_principal p1, p2;

    ret = krb5_cc_default(context, id);
    if(ret) {
 *id = ((void*)0);
 return ret;
    }

    ret = krb5_cc_get_principal(context, *id, &p1);
    if(ret) {
 krb5_cc_close(context, *id);
 *id = ((void*)0);
 return ret;
    }

    ret = krb5_make_principal(context, &p2, ((void*)0),
         "kadmin", "admin", ((void*)0));
    if (ret) {
 krb5_cc_close(context, *id);
 *id = ((void*)0);
 krb5_free_principal(context, p1);
 return ret;
    }

    {
 krb5_creds in, *out;
 krb5_kdc_flags flags;

 flags.i = 0;
 memset(&in, 0, sizeof(in));

 in.client = p1;
 in.server = p2;


 ret = krb5_get_credentials_with_flags(context, KRB5_GC_CACHED, flags,
           *id, &in, &out);
 krb5_free_principal(context, p2);
 if (ret == 0) {
     if (out->flags.b.initial) {
  *client = p1;
  krb5_free_creds(context, out);
  return 0;
     }
     krb5_free_creds(context, out);
 }
    }
    krb5_cc_close(context, *id);
    *id = ((void*)0);

    name = krb5_principal_get_comp_string(context, p1, 0);
    inst = krb5_principal_get_comp_string(context, p1, 1);
    if(inst == ((void*)0) || strcmp(inst, "admin") != 0) {
 ret = krb5_make_principal(context, &p2, ((void*)0), name, "admin", ((void*)0));
 krb5_free_principal(context, p1);
 if(ret != 0)
     return ret;

 *client = p2;
 return 0;
    }

    *client = p1;

    return 0;
}
