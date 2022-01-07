
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int num_strings; char** strings; } ;
struct get_options {char* realm_string; int server_port_integer; int admin_server_string; int principal_string; TYPE_1__ enctypes_strings; } ;
typedef int princ ;
typedef void* krb5_principal ;
struct TYPE_15__ {scalar_t__ keytype; } ;
struct TYPE_14__ {int vno; int timestamp; TYPE_3__ keyblock; void* principal; } ;
typedef TYPE_2__ krb5_keytab_entry ;
typedef int * krb5_keytab ;
typedef TYPE_3__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
struct TYPE_16__ {int attributes; int kvno; scalar_t__ princ_expire_time; void* principal; } ;
typedef TYPE_4__ kadm5_principal_ent_rec ;


 int FALSE ;
 int KADM5_ATTRIBUTES ;
 scalar_t__ KADM5_DUP ;
 int KADM5_KVNO ;
 int KADM5_PRINCIPAL ;
 int KADM5_PRINC_EXPIRE_TIME ;
 int KRB5_KDB_DISALLOW_ALL_TIX ;
 int TRUE ;
 int context ;
 int free (scalar_t__*) ;
 scalar_t__ kadm5_create_principal (void*,TYPE_4__*,int,char*) ;
 int kadm5_destroy (void*) ;
 int kadm5_free_principal_ent (void*,TYPE_4__*) ;
 scalar_t__ kadm5_get_principal (void*,void*,TYPE_4__*,int) ;
 scalar_t__ kadm5_modify_principal (void*,TYPE_4__*,int) ;
 scalar_t__ kadm5_randkey_principal (void*,void*,TYPE_3__**,int*) ;
 int krb5_free_keyblock_contents (int ,TYPE_3__*) ;
 int krb5_free_principal (int ,void*) ;
 scalar_t__ krb5_kt_add_entry (int ,int *,TYPE_2__*) ;
 int krb5_kt_close (int ,int *) ;
 scalar_t__ krb5_parse_name (int ,char*,void**) ;
 char* krb5_principal_get_realm (int ,void*) ;
 int krb5_set_default_realm (int ,char*) ;
 scalar_t__ krb5_string_to_enctype (int ,char*,scalar_t__*) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int krb5_warnx (int ,char*,...) ;
 int * ktutil_open_keytab () ;
 scalar_t__* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 void* open_kadmin_connection (int ,char const*,int ,int ) ;
 int time (int *) ;

int
kt_get(struct get_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_keytab keytab;
    void *kadm_handle = ((void*)0);
    krb5_enctype *etypes = ((void*)0);
    size_t netypes = 0;
    size_t i;
    int a, j;
    unsigned int failed = 0;

    if((keytab = ktutil_open_keytab()) == ((void*)0))
 return 1;

    if(opt->realm_string)
 krb5_set_default_realm(context, opt->realm_string);

    if (opt->enctypes_strings.num_strings != 0) {

 etypes = malloc (opt->enctypes_strings.num_strings * sizeof(*etypes));
 if (etypes == ((void*)0)) {
     krb5_warnx(context, "malloc failed");
     goto out;
 }
 netypes = opt->enctypes_strings.num_strings;
 for(i = 0; i < netypes; i++) {
     ret = krb5_string_to_enctype(context,
      opt->enctypes_strings.strings[i],
      &etypes[i]);
     if(ret) {
  krb5_warnx(context, "unrecognized enctype: %s",
      opt->enctypes_strings.strings[i]);
  goto out;
     }
 }
    }


    for(a = 0; a < argc; a++){
 krb5_principal princ_ent;
 kadm5_principal_ent_rec princ;
 int mask = 0;
 krb5_keyblock *keys;
 int n_keys;
 int created = 0;
 krb5_keytab_entry entry;

 ret = krb5_parse_name(context, argv[a], &princ_ent);
 if (ret) {
     krb5_warn(context, ret, "can't parse principal %s", argv[a]);
     failed++;
     continue;
 }
 memset(&princ, 0, sizeof(princ));
 princ.principal = princ_ent;
 mask |= KADM5_PRINCIPAL;
 princ.attributes |= KRB5_KDB_DISALLOW_ALL_TIX;
 mask |= KADM5_ATTRIBUTES;
 princ.princ_expire_time = 0;
 mask |= KADM5_PRINC_EXPIRE_TIME;

 if(kadm_handle == ((void*)0)) {
     const char *r;
     if(opt->realm_string != ((void*)0))
  r = opt->realm_string;
     else
  r = krb5_principal_get_realm(context, princ_ent);
     kadm_handle = open_kadmin_connection(opt->principal_string,
       r,
       opt->admin_server_string,
       opt->server_port_integer);
     if(kadm_handle == ((void*)0))
  break;
 }

 ret = kadm5_create_principal(kadm_handle, &princ, mask, "x");
 if(ret == 0)
     created = 1;
 else if(ret != KADM5_DUP) {
     krb5_warn(context, ret, "kadm5_create_principal(%s)", argv[a]);
     krb5_free_principal(context, princ_ent);
     failed++;
     continue;
 }
 ret = kadm5_randkey_principal(kadm_handle, princ_ent, &keys, &n_keys);
 if (ret) {
     krb5_warn(context, ret, "kadm5_randkey_principal(%s)", argv[a]);
     krb5_free_principal(context, princ_ent);
     failed++;
     continue;
 }

 ret = kadm5_get_principal(kadm_handle, princ_ent, &princ,
         KADM5_PRINCIPAL | KADM5_KVNO | KADM5_ATTRIBUTES);
 if (ret) {
     krb5_warn(context, ret, "kadm5_get_principal(%s)", argv[a]);
     for (j = 0; j < n_keys; j++)
  krb5_free_keyblock_contents(context, &keys[j]);
     krb5_free_principal(context, princ_ent);
     failed++;
     continue;
 }
 if(!created && (princ.attributes & KRB5_KDB_DISALLOW_ALL_TIX))
     krb5_warnx(context, "%s: disallow-all-tix flag set - clearing", argv[a]);
 princ.attributes &= (~KRB5_KDB_DISALLOW_ALL_TIX);
 mask = KADM5_ATTRIBUTES;
 if(created) {
     princ.kvno = 1;
     mask |= KADM5_KVNO;
 }
 ret = kadm5_modify_principal(kadm_handle, &princ, mask);
 if (ret) {
     krb5_warn(context, ret, "kadm5_modify_principal(%s)", argv[a]);
     for (j = 0; j < n_keys; j++)
  krb5_free_keyblock_contents(context, &keys[j]);
     krb5_free_principal(context, princ_ent);
     failed++;
     continue;
 }
 for(j = 0; j < n_keys; j++) {
     int do_add = TRUE;

     if (netypes) {
  size_t k;

  do_add = FALSE;
  for (k = 0; k < netypes; ++k)
      if (keys[j].keytype == etypes[k]) {
   do_add = TRUE;
   break;
      }
     }
     if (do_add) {
  entry.principal = princ_ent;
  entry.vno = princ.kvno;
  entry.keyblock = keys[j];
  entry.timestamp = time (((void*)0));
  ret = krb5_kt_add_entry(context, keytab, &entry);
  if (ret)
      krb5_warn(context, ret, "krb5_kt_add_entry");
     }
     krb5_free_keyblock_contents(context, &keys[j]);
 }

 kadm5_free_principal_ent(kadm_handle, &princ);
 krb5_free_principal(context, princ_ent);
    }
 out:
    free(etypes);
    if (kadm_handle)
 kadm5_destroy(kadm_handle);
    krb5_kt_close(context, keytab);
    return ret != 0 || failed > 0;
}
