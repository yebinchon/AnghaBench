
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_name ;
typedef int hx509_context ;
typedef int hx509_cert ;
typedef int heim_integer ;
typedef int FILE ;


 int der_free_heim_integer (int *) ;
 int der_print_hex_heim_integer (int *,char**) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;
 int hx509_cert_get_issuer (int ,int *) ;
 int hx509_cert_get_serialnumber (int ,int *) ;
 int hx509_cert_get_subject (int ,int *) ;
 int hx509_cert_keyusage_print (int ,int ,char**) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;
 int printf (char*) ;
 int * stderr ;

int
hx509_print_cert(hx509_context context, hx509_cert cert, FILE *out)
{
    hx509_name name;
    char *str;
    int ret;

    if (out == ((void*)0))
 out = stderr;

    ret = hx509_cert_get_issuer(cert, &name);
    if (ret)
 return ret;
    hx509_name_to_string(name, &str);
    hx509_name_free(&name);
    fprintf(out, "    issuer:  \"%s\"\n", str);
    free(str);

    ret = hx509_cert_get_subject(cert, &name);
    if (ret)
 return ret;
    hx509_name_to_string(name, &str);
    hx509_name_free(&name);
    fprintf(out, "    subject: \"%s\"\n", str);
    free(str);

    {
 heim_integer serialNumber;

 ret = hx509_cert_get_serialnumber(cert, &serialNumber);
 if (ret)
     return ret;
 ret = der_print_hex_heim_integer(&serialNumber, &str);
 if (ret)
     return ret;
 der_free_heim_integer(&serialNumber);
 fprintf(out, "    serial: %s\n", str);
 free(str);
    }

    printf("    keyusage: ");
    ret = hx509_cert_keyusage_print(context, cert, &str);
    if (ret == 0) {
 fprintf(out, "%s\n", str);
 free(str);
    } else
 fprintf(out, "no");

    return 0;
}
