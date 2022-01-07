
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kafs_token {int ticket; int ticket_len; int ct; } ;
typedef int krb5_creds ;
typedef int krb5_context ;


 int free (int ) ;
 int kafs_settoken_rxkad (char const*,int *,int ,int ) ;
 int v5_convert (int ,int *,int *,int ,char const*,struct kafs_token*) ;

int
kafs_settoken5(krb5_context context, const char *cell, uid_t uid,
        krb5_creds *cred)
{
    struct kafs_token kt;
    int ret;

    ret = v5_convert(context, ((void*)0), cred, uid, cell, &kt);
    if (ret)
 return ret;

    ret = kafs_settoken_rxkad(cell, &kt.ct, kt.ticket, kt.ticket_len);

    free(kt.ticket);

    return ret;
}
