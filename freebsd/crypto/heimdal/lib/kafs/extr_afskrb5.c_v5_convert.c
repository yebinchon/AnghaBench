
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kafs_token {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int ENOMEM ;
 int _kafs_foldup (char*,char*) ;
 int free (char*) ;
 int krb5_appdefault_string (int ,char*,char*,char*,char*,char**) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strdup (char const*) ;
 int v5_to_kt (int *,int ,struct kafs_token*,int) ;

__attribute__((used)) static krb5_error_code
v5_convert(krb5_context context, krb5_ccache id,
    krb5_creds *cred, uid_t uid,
    const char *cell,
    struct kafs_token *kt)
{
    krb5_error_code ret;
    char *c, *val;

    c = strdup(cell);
    if (c == ((void*)0))
 return ENOMEM;
    _kafs_foldup(c, c);
    krb5_appdefault_string (context, "libkafs",
       c,
       "afs-use-524", "2b", &val);
    free(c);

    if (strcasecmp(val, "local") == 0 ||
 strcasecmp(val, "2b") == 0)
 ret = v5_to_kt(cred, uid, kt, 1);
    else
 ret = v5_to_kt(cred, uid, kt, 0);

    free(val);
    return ret;
}
