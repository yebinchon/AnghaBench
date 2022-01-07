
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int kadm5_principal_ent_rec ;


 int KRB5_TGS_NAME ;
 int asprintf (char**,char*,char*,...) ;
 int context ;
 int do_check_entry ;
 scalar_t__ errno ;
 int foreach_principal (char*,int ,char*,int *) ;
 int free (char*) ;
 scalar_t__ get_check_entry (char*,int *) ;
 int kadm5_free_principal_ent (int ,int *) ;
 int kadm_handle ;
 scalar_t__ krb5_get_default_realm (int ,char**) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int krb5_warnx (int ,char*) ;
 int printf (char*,char*,...) ;
 char* strdup (char*) ;
 int strlwr (char*) ;

int
check(void *opt, int argc, char **argv)
{
    kadm5_principal_ent_rec ent;
    krb5_error_code ret;
    char *realm = ((void*)0), *p, *p2;
    int found;

    if (argc == 0) {
 ret = krb5_get_default_realm(context, &realm);
 if (ret) {
     krb5_warn(context, ret, "krb5_get_default_realm");
     goto fail;
 }
    } else {
 realm = strdup(argv[0]);
 if (realm == ((void*)0)) {
     krb5_warnx(context, "malloc");
     goto fail;
 }
    }







    if (asprintf(&p, "%s/%s@%s", KRB5_TGS_NAME, realm, realm) == -1) {
 krb5_warn(context, errno, "asprintf");
 goto fail;
    }

    ret = get_check_entry(p, &ent);
    if (ret) {
 printf("%s doesn't exist, are you sure %s is a realm in your database",
        p, realm);
 free(p);
 goto fail;
    }
    free(p);

    kadm5_free_principal_ent(kadm_handle, &ent);





    if (asprintf(&p, "kadmin/admin@%s", realm) == -1) {
 krb5_warn(context, errno, "asprintf");
 goto fail;
    }

    ret = get_check_entry(p, &ent);
    if (ret) {
 printf("%s doesn't exist, "
        "there is no way to do remote administration", p);
 free(p);
 goto fail;
    }
    free(p);

    kadm5_free_principal_ent(kadm_handle, &ent);





    if (asprintf(&p, "kadmin/changepw@%s", realm) == -1) {
 krb5_warn(context, errno, "asprintf");
 goto fail;
    }

    ret = get_check_entry(p, &ent);
    if (ret) {
 printf("%s doesn't exist, "
        "there is no way to do change password", p);
 free(p);
 goto fail;
    }
    free(p);

    kadm5_free_principal_ent(kadm_handle, &ent);





    p2 = strdup(realm);
    if (p2 == ((void*)0)) {
 krb5_warn(context, errno, "malloc");
 goto fail;
    }
    strlwr(p2);

    if (asprintf(&p, "afs/%s@%s", p2, realm) == -1) {
 krb5_warn(context, errno, "asprintf");
 free(p2);
 goto fail;
    }
    free(p2);

    ret = get_check_entry(p, &ent);
    free(p);
    if (ret == 0) {
 kadm5_free_principal_ent(kadm_handle, &ent);
 found = 1;
    } else
 found = 0;

    if (asprintf(&p, "afs@%s", realm) == -1) {
 krb5_warn(context, errno, "asprintf");
 goto fail;
    }

    ret = get_check_entry(p, &ent);
    free(p);
    if (ret == 0) {
 kadm5_free_principal_ent(kadm_handle, &ent);
 if (found) {
     krb5_warnx(context, "afs@REALM and afs/cellname@REALM both exists");
     goto fail;
 }
    }

    foreach_principal("*", do_check_entry, "check", ((void*)0));

    free(realm);
    return 0;
fail:
    free(realm);
    return 1;
}
