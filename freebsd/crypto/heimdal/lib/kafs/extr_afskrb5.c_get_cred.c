
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uid_t ;
struct krb5_kafs_data {int context; int id; } ;
struct kafs_token {int dummy; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;
typedef int krb5_error_code ;
struct TYPE_8__ {int keytype; } ;
struct TYPE_9__ {int client; int server; TYPE_1__ session; } ;
typedef TYPE_2__ krb5_creds ;
typedef int in_creds ;


 int ETYPE_DES_CBC_CRC ;
 int ETYPE_DES_CBC_MD5 ;
 int krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_enctype_disable (int ,int ) ;
 int krb5_enctype_enable (int ,int ) ;
 int krb5_enctype_valid (int ,int ) ;
 int krb5_free_creds (int ,TYPE_2__*) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_get_credentials (int ,int ,int ,TYPE_2__*,TYPE_2__**) ;
 int krb5_make_principal (int ,int *,char const*,char const*,char const*,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int v5_convert (int ,int ,TYPE_2__*,int ,char const*,struct kafs_token*) ;

__attribute__((used)) static int
get_cred(struct kafs_data *data, const char *name, const char *inst,
  const char *realm, uid_t uid, struct kafs_token *kt)
{
    krb5_error_code ret;
    krb5_creds in_creds, *out_creds;
    struct krb5_kafs_data *d = data->data;
    int invalid;

    memset(&in_creds, 0, sizeof(in_creds));

    ret = krb5_make_principal(d->context, &in_creds.server,
         realm, name, inst, ((void*)0));
    if(ret)
 return ret;
    ret = krb5_cc_get_principal(d->context, d->id, &in_creds.client);
    if(ret){
 krb5_free_principal(d->context, in_creds.server);
 return ret;
    }

    in_creds.session.keytype = ETYPE_DES_CBC_CRC;


    invalid = krb5_enctype_valid(d->context, in_creds.session.keytype);
    if (invalid)
 krb5_enctype_enable(d->context, in_creds.session.keytype);

    ret = krb5_get_credentials(d->context, 0, d->id, &in_creds, &out_creds);
    if (ret) {
 in_creds.session.keytype = ETYPE_DES_CBC_MD5;
 ret = krb5_get_credentials(d->context, 0, d->id, &in_creds, &out_creds);
    }

    if (invalid)
 krb5_enctype_disable(d->context, in_creds.session.keytype);

    krb5_free_principal(d->context, in_creds.server);
    krb5_free_principal(d->context, in_creds.client);
    if(ret)
 return ret;

    ret = v5_convert(d->context, d->id, out_creds, uid,
       (inst != ((void*)0) && inst[0] != '\0') ? inst : realm, kt);
    krb5_free_creds(d->context, out_creds);

    return ret;
}
