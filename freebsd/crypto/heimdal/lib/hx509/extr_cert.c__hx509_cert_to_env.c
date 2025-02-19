
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int hx509_name ;
typedef int * hx509_env ;
typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_17__ {int length; int data; } ;
typedef TYPE_4__ heim_octet_string ;
struct TYPE_14__ {int length; int data; } ;
struct TYPE_15__ {TYPE_1__ subjectPublicKey; } ;
struct TYPE_16__ {TYPE_2__ subjectPublicKeyInfo; } ;
struct TYPE_19__ {TYPE_3__ tbsCertificate; } ;
struct TYPE_18__ {size_t len; int * val; } ;
typedef TYPE_5__ ExtKeyUsage ;
typedef TYPE_6__ Certificate ;


 int ENOMEM ;
 int HX509_EXTENSION_NOT_FOUND ;
 int _hx509_cert_get_eku (int ,int ,TYPE_5__*) ;
 int _hx509_cert_get_version (TYPE_6__*) ;
 int _hx509_create_signature (int ,int *,int ,TYPE_4__*,int *,TYPE_4__*) ;
 TYPE_6__* _hx509_get_cert (int ) ;
 int asprintf (char**,char*,int ) ;
 int der_free_octet_string (TYPE_4__*) ;
 int der_print_heim_oid (int *,char,char**) ;
 int free (char*) ;
 int free_ExtKeyUsage (TYPE_5__*) ;
 int hex_encode (int ,int,char**) ;
 int hx509_cert_get_issuer (int ,int *) ;
 int hx509_cert_get_subject (int ,int *) ;
 int hx509_env_add (int ,int **,char*,char*) ;
 int hx509_env_add_binding (int ,int **,char*,int *) ;
 int hx509_env_free (int **) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int hx509_signature_sha1 () ;
 int hx509_xfree (char*) ;

int
_hx509_cert_to_env(hx509_context context, hx509_cert cert, hx509_env *env)
{
    ExtKeyUsage eku;
    hx509_name name;
    char *buf;
    int ret;
    hx509_env envcert = ((void*)0);

    *env = ((void*)0);


    asprintf(&buf, "%d", _hx509_cert_get_version(_hx509_get_cert(cert)));
    ret = hx509_env_add(context, &envcert, "version", buf);
    free(buf);
    if (ret)
 goto out;


    ret = hx509_cert_get_subject(cert, &name);
    if (ret)
 goto out;

    ret = hx509_name_to_string(name, &buf);
    if (ret) {
 hx509_name_free(&name);
 goto out;
    }

    ret = hx509_env_add(context, &envcert, "subject", buf);
    hx509_name_free(&name);
    if (ret)
 goto out;


    ret = hx509_cert_get_issuer(cert, &name);
    if (ret)
 goto out;

    ret = hx509_name_to_string(name, &buf);
    hx509_name_free(&name);
    if (ret)
 goto out;

    ret = hx509_env_add(context, &envcert, "issuer", buf);
    hx509_xfree(buf);
    if (ret)
 goto out;



    ret = _hx509_cert_get_eku(context, cert, &eku);
    if (ret == HX509_EXTENSION_NOT_FOUND)
 ;
    else if (ret != 0)
 goto out;
    else {
 size_t i;
 hx509_env enveku = ((void*)0);

 for (i = 0; i < eku.len; i++) {

     ret = der_print_heim_oid(&eku.val[i], '.', &buf);
     if (ret) {
  free_ExtKeyUsage(&eku);
  hx509_env_free(&enveku);
  goto out;
     }
     ret = hx509_env_add(context, &enveku, buf, "oid-name-here");
     free(buf);
     if (ret) {
  free_ExtKeyUsage(&eku);
  hx509_env_free(&enveku);
  goto out;
     }
 }
 free_ExtKeyUsage(&eku);

 ret = hx509_env_add_binding(context, &envcert, "eku", enveku);
 if (ret) {
     hx509_env_free(&enveku);
     goto out;
 }
    }

    {
 Certificate *c = _hx509_get_cert(cert);
        heim_octet_string os, sig;
 hx509_env envhash = ((void*)0);

 os.data = c->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.data;
 os.length =
   c->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.length / 8;

 ret = _hx509_create_signature(context,
          ((void*)0),
          hx509_signature_sha1(),
          &os,
          ((void*)0),
          &sig);
 if (ret != 0)
     goto out;

 ret = hex_encode(sig.data, sig.length, &buf);
 der_free_octet_string(&sig);
 if (ret < 0) {
     ret = ENOMEM;
     hx509_set_error_string(context, 0, ret,
       "Out of memory");
     goto out;
 }

 ret = hx509_env_add(context, &envhash, "sha1", buf);
 free(buf);
 if (ret)
     goto out;

 ret = hx509_env_add_binding(context, &envcert, "hash", envhash);
 if (ret) {
   hx509_env_free(&envhash);
   goto out;
 }
    }

    ret = hx509_env_add_binding(context, env, "certificate", envcert);
    if (ret)
 goto out;

    return 0;

out:
    hx509_env_free(&envcert);
    return ret;
}
