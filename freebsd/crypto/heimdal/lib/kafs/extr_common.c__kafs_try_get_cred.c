
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kafs_token {int dummy; } ;
struct kafs_data {int (* get_cred ) (struct kafs_data*,char const*,char const*,char const*,int ,struct kafs_token*) ;char* (* get_error ) (struct kafs_data*,int) ;int (* free_error ) (struct kafs_data*,char const*) ;int name; } ;


 int asprintf (char**,char*,int ,char*,char const*,char const*,char const*,int) ;
 int free (char*) ;
 int kafs_verbose (int ,char*) ;
 int kafs_verbose_ctx ;
 int stub1 (struct kafs_data*,char const*,char const*,char const*,int ,struct kafs_token*) ;
 char* stub2 (struct kafs_data*,int) ;
 int stub3 (int ,char*) ;
 int stub4 (struct kafs_data*,char const*) ;

__attribute__((used)) static int
_kafs_try_get_cred(struct kafs_data *data, const char *user, const char *cell,
     const char *realm, uid_t uid, struct kafs_token *kt)
{
    int ret;

    ret = (*data->get_cred)(data, user, cell, realm, uid, kt);
    if (kafs_verbose) {
 const char *estr = (*data->get_error)(data, ret);
 char *str;
 asprintf(&str, "%s tried afs%s%s@%s -> %s (%d)",
   data->name, cell ? "/" : "",
   cell ? cell : "", realm, estr ? estr : "unknown", ret);
 (*kafs_verbose)(kafs_verbose_ctx, str);
 if (estr)
     (*data->free_error)(data, estr);
 free(str);
    }

    return ret;
}
