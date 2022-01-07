
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int time_t ;
typedef int t ;
typedef int off_t ;
typedef int krb5_storage ;
typedef int krb5_principal ;
typedef int krb5_error_code ;
struct TYPE_9__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
struct TYPE_10__ {int context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef int int32_t ;
struct TYPE_11__ {int kvno; int * max_renew; int * max_life; int flags; int * pw_end; int * valid_end; int principal; } ;
typedef TYPE_3__ hdb_entry ;
typedef enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;


 int HDBFlags2int (int ) ;
 int KADM5_ATTRIBUTES ;
 int KADM5_AUX_ATTRIBUTES ;
 int KADM5_FAIL_AUTH_COUNT ;
 int KADM5_KEY_DATA ;
 int KADM5_KVNO ;
 int KADM5_LAST_FAILED ;
 int KADM5_LAST_PWD_CHANGE ;
 int KADM5_LAST_SUCCESS ;
 int KADM5_MAX_LIFE ;
 int KADM5_MAX_RLIFE ;
 int KADM5_MKVNO ;
 int KADM5_MOD_NAME ;
 int KADM5_MOD_TIME ;
 int KADM5_POLICY ;
 int KADM5_POLICY_CLR ;
 int KADM5_PRINC_EXPIRE_TIME ;
 int KADM5_PW_EXPIRATION ;
 int KADM5_TL_DATA ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int abort () ;
 int asn1_HDBFlags_units () ;
 int free (char*) ;
 int free_hdb_entry (TYPE_3__*) ;
 int hdb_value2entry (int ,TYPE_1__*,TYPE_3__*) ;


 scalar_t__ kadm_get ;



 int krb5_data_alloc (TYPE_1__*,int) ;
 int krb5_err (int ,int,int ,char*,int) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_ret_int32 (int *,int*) ;
 int krb5_ret_principal (int *,int *) ;
 int krb5_storage_read (int *,int ,int ) ;
 int krb5_storage_seek (int *,int,int ) ;
 int krb5_unparse_name (int ,int ,char**) ;
 int localtime (int *) ;
 char** op_names ;
 int printf (char*,...) ;
 int strftime (char*,int,char*,int ) ;
 int strlcpy (char*,char*,int) ;
 int unparse_flags (int ,int ,char*,int) ;
 int unparse_time (int ,char*,int) ;

__attribute__((used)) static void
print_entry(kadm5_server_context *server_context,
     uint32_t ver,
     time_t timestamp,
     enum kadm_ops op,
     uint32_t len,
     krb5_storage *sp,
     void *ctx)
{
    char t[256];
    int32_t mask;
    hdb_entry ent;
    krb5_principal source;
    char *name1, *name2;
    krb5_data data;
    krb5_context scontext = server_context->context;

    off_t end = krb5_storage_seek(sp, 0, SEEK_CUR) + len;

    krb5_error_code ret;

    strftime(t, sizeof(t), "%Y-%m-%d %H:%M:%S", localtime(&timestamp));

    if((int)op < (int)kadm_get || (int)op > (int)129) {
 printf("unknown op: %d\n", op);
 krb5_storage_seek(sp, end, SEEK_SET);
 return;
    }

    printf ("%s: ver = %u, timestamp = %s, len = %u\n",
     op_names[op], ver, t, len);
    switch(op) {
    case 131:
 krb5_ret_principal(sp, &source);
 krb5_unparse_name(scontext, source, &name1);
 printf("    %s\n", name1);
 free(name1);
 krb5_free_principal(scontext, source);
 break;
    case 128:
 ret = krb5_data_alloc(&data, len);
 if (ret)
     krb5_err (scontext, 1, ret, "kadm_rename: data alloc: %d", len);
 krb5_ret_principal(sp, &source);
 krb5_storage_read(sp, data.data, data.length);
 hdb_value2entry(scontext, &data, &ent);
 krb5_unparse_name(scontext, source, &name1);
 krb5_unparse_name(scontext, ent.principal, &name2);
 printf("    %s -> %s\n", name1, name2);
 free(name1);
 free(name2);
 krb5_free_principal(scontext, source);
 free_hdb_entry(&ent);
 break;
    case 132:
 ret = krb5_data_alloc(&data, len);
 if (ret)
     krb5_err (scontext, 1, ret, "kadm_create: data alloc: %d", len);
 krb5_storage_read(sp, data.data, data.length);
 ret = hdb_value2entry(scontext, &data, &ent);
 if(ret)
     abort();
 mask = ~0;
 goto foo;
    case 130:
 ret = krb5_data_alloc(&data, len);
 if (ret)
     krb5_err (scontext, 1, ret, "kadm_modify: data alloc: %d", len);
 krb5_ret_int32(sp, &mask);
 krb5_storage_read(sp, data.data, data.length);
 ret = hdb_value2entry(scontext, &data, &ent);
 if(ret)
     abort();
    foo:
 if(ent.principal ) {
     krb5_unparse_name(scontext, ent.principal, &name1);
     printf("    principal = %s\n", name1);
     free(name1);
 }
 if(mask & KADM5_PRINC_EXPIRE_TIME) {
     if(ent.valid_end == ((void*)0)) {
  strlcpy(t, "never", sizeof(t));
     } else {
  strftime(t, sizeof(t), "%Y-%m-%d %H:%M:%S",
    localtime(ent.valid_end));
     }
     printf("    expires = %s\n", t);
 }
 if(mask & KADM5_PW_EXPIRATION) {
     if(ent.pw_end == ((void*)0)) {
  strlcpy(t, "never", sizeof(t));
     } else {
  strftime(t, sizeof(t), "%Y-%m-%d %H:%M:%S",
    localtime(ent.pw_end));
     }
     printf("    password exp = %s\n", t);
 }
 if(mask & KADM5_LAST_PWD_CHANGE) {
 }
 if(mask & KADM5_ATTRIBUTES) {
     unparse_flags(HDBFlags2int(ent.flags),
     asn1_HDBFlags_units(), t, sizeof(t));
     printf("    attributes = %s\n", t);
 }
 if(mask & KADM5_MAX_LIFE) {
     if(ent.max_life == ((void*)0))
  strlcpy(t, "for ever", sizeof(t));
     else
  unparse_time(*ent.max_life, t, sizeof(t));
     printf("    max life = %s\n", t);
 }
 if(mask & KADM5_MAX_RLIFE) {
     if(ent.max_renew == ((void*)0))
  strlcpy(t, "for ever", sizeof(t));
     else
  unparse_time(*ent.max_renew, t, sizeof(t));
     printf("    max rlife = %s\n", t);
 }
 if(mask & KADM5_MOD_TIME) {
     printf("    mod time\n");
 }
 if(mask & KADM5_MOD_NAME) {
     printf("    mod name\n");
 }
 if(mask & KADM5_KVNO) {
     printf("    kvno = %d\n", ent.kvno);
 }
 if(mask & KADM5_MKVNO) {
     printf("    mkvno\n");
 }
 if(mask & KADM5_AUX_ATTRIBUTES) {
     printf("    aux attributes\n");
 }
 if(mask & KADM5_POLICY) {
     printf("    policy\n");
 }
 if(mask & KADM5_POLICY_CLR) {
     printf("    mod time\n");
 }
 if(mask & KADM5_LAST_SUCCESS) {
     printf("    last success\n");
 }
 if(mask & KADM5_LAST_FAILED) {
     printf("    last failed\n");
 }
 if(mask & KADM5_FAIL_AUTH_COUNT) {
     printf("    fail auth count\n");
 }
 if(mask & KADM5_KEY_DATA) {
     printf("    key data\n");
 }
 if(mask & KADM5_TL_DATA) {
     printf("    tl data\n");
 }
 free_hdb_entry(&ent);
 break;
    case 129 :
 break;
    default:
 abort();
    }
    krb5_storage_seek(sp, end, SEEK_SET);
}
