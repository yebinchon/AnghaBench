
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kafs_token {int dummy; } ;
struct kafs_data {int dummy; } ;


 int AUTH_SUPERUSER ;
 int _kafs_foldup (char*,char const*) ;
 scalar_t__ _kafs_realm_of_cell (struct kafs_data*,char const*,char**) ;
 int _kafs_try_get_cred (struct kafs_data*,int ,char const*,char const*,int ,struct kafs_token*) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char const*) ;

int
_kafs_get_cred(struct kafs_data *data,
        const char *cell,
        const char *realm_hint,
        const char *realm,
        uid_t uid,
        struct kafs_token *kt)
{
    int ret = -1;
    char *vl_realm;
    char CELL[64];
    if (realm_hint) {
 ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
     cell, realm_hint, uid, kt);
 if (ret == 0) return 0;
 ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
     ((void*)0), realm_hint, uid, kt);
 if (ret == 0) return 0;
    }

    _kafs_foldup(CELL, cell);






    ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
        cell, realm, uid, kt);
    if (ret == 0) return 0;





    if (strcmp(CELL, realm) == 0) {
        ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
     ((void*)0), realm, uid, kt);
 if (ret == 0) return 0;
    }







    ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
        ((void*)0), CELL, uid, kt);
    if (ret == 0) return 0;
    ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
        cell, CELL, uid, kt);
    if (ret == 0) return 0;







    if (_kafs_realm_of_cell(data, cell, &vl_realm) == 0
 && strcmp(vl_realm, realm) != 0
 && strcmp(vl_realm, CELL) != 0) {
 ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
     cell, vl_realm, uid, kt);
 if (ret)
     ret = _kafs_try_get_cred(data, AUTH_SUPERUSER,
         ((void*)0), vl_realm, uid, kt);
 free(vl_realm);
 if (ret == 0) return 0;
    }

    return ret;
}
