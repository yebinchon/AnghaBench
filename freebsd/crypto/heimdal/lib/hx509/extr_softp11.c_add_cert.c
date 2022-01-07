
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int type ;
struct st_object {void* cert; } ;
struct foo {char* label; char* id; } ;
typedef int mech_type ;
typedef int key_type ;
typedef int hx509_name ;
typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_4__ {char* data; int length; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int flags ;
typedef int cert_type ;
typedef int bool_true ;
typedef int bool_false ;
typedef scalar_t__ CK_RV ;
typedef char CK_OBJECT_CLASS ;
typedef char CK_MECHANISM_TYPE ;
typedef char CK_KEY_TYPE ;
typedef char CK_FLAGS ;
typedef char CK_CERTIFICATE_TYPE ;
typedef char CK_BBOOL ;
typedef int AlgorithmIdentifier ;


 int CKA_AUTH_PIN_FLAGS ;
 int CKA_CERTIFICATE_TYPE ;
 int CKA_CLASS ;
 int CKA_DECRYPT ;
 int CKA_DERIVE ;
 int CKA_ENCRYPT ;
 int CKA_END_DATE ;
 int CKA_EXTRACTABLE ;
 int CKA_ID ;
 int CKA_ISSUER ;
 int CKA_KEY_GEN_MECHANISM ;
 int CKA_KEY_TYPE ;
 int CKA_LABEL ;
 int CKA_LOCAL ;
 int CKA_MODIFIABLE ;
 int CKA_NEVER_EXTRACTABLE ;
 int CKA_PRIVATE ;
 int CKA_SECONDARY_AUTH ;
 int CKA_SENSITIVE ;
 int CKA_SERIAL_NUMBER ;
 int CKA_SIGN ;
 int CKA_SIGN_RECOVER ;
 int CKA_START_DATE ;
 int CKA_SUBJECT ;
 int CKA_TOKEN ;
 int CKA_TRUSTED ;
 int CKA_UNWRAP ;
 int CKA_VALUE ;
 int CKA_VERIFY ;
 int CKA_VERIFY_RECOVER ;
 int CKA_WRAP ;
 char CKC_X_509 ;
 char CKK_RSA ;
 char CKM_RSA_X_509 ;
 char CKO_CERTIFICATE ;
 char CKO_PRIVATE_KEY ;
 char CKO_PUBLIC_KEY ;
 scalar_t__ CKR_DEVICE_MEMORY ;
 scalar_t__ CKR_GENERAL_ERROR ;
 scalar_t__ CKR_OK ;
 char CK_FALSE ;
 char CK_TRUE ;
 scalar_t__ OBJECT_ID (struct st_object*) ;
 int add_object_attribute (struct st_object*,int ,int ,char*,int) ;
 int add_pubkey_info (int ,struct st_object*,char,int ) ;
 struct st_object* add_st_object () ;
 int context ;
 int free_AlgorithmIdentifier (int *) ;
 int hx509_cert_binary (int ,int ,TYPE_1__*) ;
 int hx509_cert_get_SPKI_AlgorithmIdentifier (int ,int ,int *) ;
 int hx509_cert_get_issuer (int ,int *) ;
 int hx509_cert_get_subject (int ,int *) ;
 scalar_t__ hx509_cert_have_private_key (int ) ;
 void* hx509_cert_ref (int ) ;
 int hx509_name_binary (int ,TYPE_1__*) ;
 int hx509_name_free (int *) ;
 int hx509_xfree (char*) ;
 int st_logf (char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int
add_cert(hx509_context hxctx, void *ctx, hx509_cert cert)
{
    static char empty[] = "";
    struct foo *foo = (struct foo *)ctx;
    struct st_object *o = ((void*)0);
    CK_OBJECT_CLASS type;
    CK_BBOOL bool_true = CK_TRUE;
    CK_BBOOL bool_false = CK_FALSE;
    CK_CERTIFICATE_TYPE cert_type = CKC_X_509;
    CK_KEY_TYPE key_type;
    CK_MECHANISM_TYPE mech_type;
    CK_RV ret = CKR_GENERAL_ERROR;
    int hret;
    heim_octet_string cert_data, subject_data, issuer_data, serial_data;

    st_logf("adding certificate\n");

    serial_data.data = ((void*)0);
    serial_data.length = 0;
    cert_data = subject_data = issuer_data = serial_data;

    hret = hx509_cert_binary(hxctx, cert, &cert_data);
    if (hret)
 goto out;

    {
     hx509_name name;

     hret = hx509_cert_get_issuer(cert, &name);
     if (hret)
  goto out;
     hret = hx509_name_binary(name, &issuer_data);
     hx509_name_free(&name);
     if (hret)
  goto out;

     hret = hx509_cert_get_subject(cert, &name);
     if (hret)
  goto out;
     hret = hx509_name_binary(name, &subject_data);
     hx509_name_free(&name);
     if (hret)
  goto out;
    }

    {
 AlgorithmIdentifier alg;

 hret = hx509_cert_get_SPKI_AlgorithmIdentifier(context, cert, &alg);
 if (hret) {
     ret = CKR_DEVICE_MEMORY;
     goto out;
 }

 key_type = CKK_RSA;

 free_AlgorithmIdentifier(&alg);
    }


    type = CKO_CERTIFICATE;
    o = add_st_object();
    if (o == ((void*)0)) {
 ret = CKR_DEVICE_MEMORY;
 goto out;
    }

    o->cert = hx509_cert_ref(cert);

    add_object_attribute(o, 0, CKA_CLASS, &type, sizeof(type));
    add_object_attribute(o, 0, CKA_TOKEN, &bool_true, sizeof(bool_true));
    add_object_attribute(o, 0, CKA_PRIVATE, &bool_false, sizeof(bool_false));
    add_object_attribute(o, 0, CKA_MODIFIABLE, &bool_false, sizeof(bool_false));
    add_object_attribute(o, 0, CKA_LABEL, foo->label, strlen(foo->label));

    add_object_attribute(o, 0, CKA_CERTIFICATE_TYPE, &cert_type, sizeof(cert_type));
    add_object_attribute(o, 0, CKA_ID, foo->id, strlen(foo->id));

    add_object_attribute(o, 0, CKA_SUBJECT, subject_data.data, subject_data.length);
    add_object_attribute(o, 0, CKA_ISSUER, issuer_data.data, issuer_data.length);
    add_object_attribute(o, 0, CKA_SERIAL_NUMBER, serial_data.data, serial_data.length);
    add_object_attribute(o, 0, CKA_VALUE, cert_data.data, cert_data.length);
    add_object_attribute(o, 0, CKA_TRUSTED, &bool_false, sizeof(bool_false));

    st_logf("add cert ok: %lx\n", (unsigned long)OBJECT_ID(o));

    type = CKO_PUBLIC_KEY;
    o = add_st_object();
    if (o == ((void*)0)) {
 ret = CKR_DEVICE_MEMORY;
 goto out;
    }
    o->cert = hx509_cert_ref(cert);

    add_object_attribute(o, 0, CKA_CLASS, &type, sizeof(type));
    add_object_attribute(o, 0, CKA_TOKEN, &bool_true, sizeof(bool_true));
    add_object_attribute(o, 0, CKA_PRIVATE, &bool_false, sizeof(bool_false));
    add_object_attribute(o, 0, CKA_MODIFIABLE, &bool_false, sizeof(bool_false));
    add_object_attribute(o, 0, CKA_LABEL, foo->label, strlen(foo->label));

    add_object_attribute(o, 0, CKA_KEY_TYPE, &key_type, sizeof(key_type));
    add_object_attribute(o, 0, CKA_ID, foo->id, strlen(foo->id));
    add_object_attribute(o, 0, CKA_START_DATE, empty, 1);
    add_object_attribute(o, 0, CKA_END_DATE, empty, 1);
    add_object_attribute(o, 0, CKA_DERIVE, &bool_false, sizeof(bool_false));
    add_object_attribute(o, 0, CKA_LOCAL, &bool_false, sizeof(bool_false));
    mech_type = CKM_RSA_X_509;
    add_object_attribute(o, 0, CKA_KEY_GEN_MECHANISM, &mech_type, sizeof(mech_type));

    add_object_attribute(o, 0, CKA_SUBJECT, subject_data.data, subject_data.length);
    add_object_attribute(o, 0, CKA_ENCRYPT, &bool_true, sizeof(bool_true));
    add_object_attribute(o, 0, CKA_VERIFY, &bool_true, sizeof(bool_true));
    add_object_attribute(o, 0, CKA_VERIFY_RECOVER, &bool_false, sizeof(bool_false));
    add_object_attribute(o, 0, CKA_WRAP, &bool_true, sizeof(bool_true));
    add_object_attribute(o, 0, CKA_TRUSTED, &bool_true, sizeof(bool_true));

    add_pubkey_info(hxctx, o, key_type, cert);

    st_logf("add key ok: %lx\n", (unsigned long)OBJECT_ID(o));

    if (hx509_cert_have_private_key(cert)) {
 CK_FLAGS flags;

 type = CKO_PRIVATE_KEY;
 o = add_st_object();
 if (o == ((void*)0)) {
     ret = CKR_DEVICE_MEMORY;
     goto out;
 }
 o->cert = hx509_cert_ref(cert);

 add_object_attribute(o, 0, CKA_CLASS, &type, sizeof(type));
 add_object_attribute(o, 0, CKA_TOKEN, &bool_true, sizeof(bool_true));
 add_object_attribute(o, 0, CKA_PRIVATE, &bool_true, sizeof(bool_false));
 add_object_attribute(o, 0, CKA_MODIFIABLE, &bool_false, sizeof(bool_false));
 add_object_attribute(o, 0, CKA_LABEL, foo->label, strlen(foo->label));

 add_object_attribute(o, 0, CKA_KEY_TYPE, &key_type, sizeof(key_type));
 add_object_attribute(o, 0, CKA_ID, foo->id, strlen(foo->id));
 add_object_attribute(o, 0, CKA_START_DATE, empty, 1);
 add_object_attribute(o, 0, CKA_END_DATE, empty, 1);
 add_object_attribute(o, 0, CKA_DERIVE, &bool_false, sizeof(bool_false));
 add_object_attribute(o, 0, CKA_LOCAL, &bool_false, sizeof(bool_false));
 mech_type = CKM_RSA_X_509;
 add_object_attribute(o, 0, CKA_KEY_GEN_MECHANISM, &mech_type, sizeof(mech_type));

 add_object_attribute(o, 0, CKA_SUBJECT, subject_data.data, subject_data.length);
 add_object_attribute(o, 0, CKA_SENSITIVE, &bool_true, sizeof(bool_true));
 add_object_attribute(o, 0, CKA_SECONDARY_AUTH, &bool_false, sizeof(bool_true));
 flags = 0;
 add_object_attribute(o, 0, CKA_AUTH_PIN_FLAGS, &flags, sizeof(flags));

 add_object_attribute(o, 0, CKA_DECRYPT, &bool_true, sizeof(bool_true));
 add_object_attribute(o, 0, CKA_SIGN, &bool_true, sizeof(bool_true));
 add_object_attribute(o, 0, CKA_SIGN_RECOVER, &bool_false, sizeof(bool_false));
 add_object_attribute(o, 0, CKA_UNWRAP, &bool_true, sizeof(bool_true));
 add_object_attribute(o, 0, CKA_EXTRACTABLE, &bool_true, sizeof(bool_true));
 add_object_attribute(o, 0, CKA_NEVER_EXTRACTABLE, &bool_false, sizeof(bool_false));

 add_pubkey_info(hxctx, o, key_type, cert);
    }

    ret = CKR_OK;
 out:
    if (ret != CKR_OK) {
 st_logf("something went wrong when adding cert!\n");

                 ;
    }
    hx509_xfree(cert_data.data);
    hx509_xfree(serial_data.data);
    hx509_xfree(issuer_data.data);
    hx509_xfree(subject_data.data);

    return 0;
}
