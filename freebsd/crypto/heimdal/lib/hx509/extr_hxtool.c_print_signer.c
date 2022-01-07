
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_pem_header ;
typedef int hx509_name ;
typedef int hx509_context ;
typedef int hx509_cert ;


 int errx (int,char*) ;
 int free (char*) ;
 int hx509_cert_get_subject (int ,int *) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int hx509_pem_add_header (int **,char*,char*) ;

__attribute__((used)) static int
print_signer(hx509_context contextp, void *ctx, hx509_cert cert)
{
    hx509_pem_header **header = ctx;
    char *signer_name = ((void*)0);
    hx509_name name;
    int ret;

    ret = hx509_cert_get_subject(cert, &name);
    if (ret)
 errx(1, "hx509_cert_get_subject");

    ret = hx509_name_to_string(name, &signer_name);
    hx509_name_free(&name);
    if (ret)
 errx(1, "hx509_name_to_string");

    hx509_pem_add_header(header, "Signer", signer_name);

    free(signer_name);
    return 0;
}
