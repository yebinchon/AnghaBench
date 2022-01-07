
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int princ ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_7__ {int n_key_data; TYPE_1__* key_data; } ;
typedef TYPE_2__ kadm5_principal_ent_rec ;
struct TYPE_6__ {scalar_t__* key_data_length; int * key_data_type; } ;


 int KADM5_KEY_DATA ;
 int KADM5_PRINCIPAL ;
 int context ;
 int free (char*) ;
 int kadm5_free_principal_ent (int ,TYPE_2__*) ;
 scalar_t__ kadm5_get_principal (int ,int ,TYPE_2__*,int) ;
 int kadm_handle ;
 scalar_t__ krb5_enctype_keysize (int ,int ,size_t*) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int krb5_warn (int ,scalar_t__,char*,char*) ;
 int krb5_warnx (int ,char*,char*,int ,unsigned long) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
do_check_entry(krb5_principal principal, void *data)
{
    krb5_error_code ret;
    kadm5_principal_ent_rec princ;
    char *name;
    int i;

    ret = krb5_unparse_name(context, principal, &name);
    if (ret)
 return 1;

    memset (&princ, 0, sizeof(princ));
    ret = kadm5_get_principal(kadm_handle, principal, &princ,
         KADM5_PRINCIPAL | KADM5_KEY_DATA);
    if(ret) {
 krb5_warn(context, ret, "Failed to get principal: %s", name);
 free(name);
 return 0;
    }

    for (i = 0; i < princ.n_key_data; i++) {
 size_t keysize;
 ret = krb5_enctype_keysize(context,
       princ.key_data[i].key_data_type[0],
       &keysize);
 if (ret == 0 && keysize != (size_t)princ.key_data[i].key_data_length[0]) {
     krb5_warnx(context,
         "Principal %s enctype %d, wrong length: %lu\n",
         name, princ.key_data[i].key_data_type[0],
         (unsigned long)princ.key_data[i].key_data_length);
 }
    }

    free(name);
    kadm5_free_principal_ent(kadm_handle, &princ);

    return 0;
}
