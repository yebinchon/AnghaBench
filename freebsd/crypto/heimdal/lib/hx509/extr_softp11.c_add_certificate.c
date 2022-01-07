
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foo {char* id; char* label; } ;
typedef int * hx509_lock ;
typedef int hx509_certs ;
typedef int CK_RV ;


 int CKR_GENERAL_ERROR ;
 int CKR_OK ;
 int HX509_CERTS_UNPROTECT_ALL ;
 int add_cert ;
 int asprintf (char**,char*,char const*) ;
 int context ;
 int free (char*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char const*,int,int *,int *) ;
 int hx509_certs_iter_f (int ,int ,int ,struct foo*) ;
 int hx509_lock_command_string (int *,char*) ;
 int hx509_lock_init (int ,int **) ;
 int memset (char*,int ,int ) ;
 int st_logf (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static CK_RV
add_certificate(const char *cert_file,
  const char *pin,
  char *id,
  char *label)
{
    hx509_certs certs;
    hx509_lock lock = ((void*)0);
    int ret, flags = 0;

    struct foo foo;
    foo.id = id;
    foo.label = label;

    if (pin == ((void*)0))
 flags |= HX509_CERTS_UNPROTECT_ALL;

    if (pin) {
 char *str;
 asprintf(&str, "PASS:%s", pin);

 hx509_lock_init(context, &lock);
 hx509_lock_command_string(lock, str);

 memset(str, 0, strlen(str));
 free(str);
    }

    ret = hx509_certs_init(context, cert_file, flags, lock, &certs);
    if (ret) {
 st_logf("failed to open file %s\n", cert_file);
 return CKR_GENERAL_ERROR;
    }

    ret = hx509_certs_iter_f(context, certs, add_cert, &foo);
    hx509_certs_free(&certs);
    if (ret) {
 st_logf("failed adding certs from file %s\n", cert_file);
 return CKR_GENERAL_ERROR;
    }

    return CKR_OK;
}
