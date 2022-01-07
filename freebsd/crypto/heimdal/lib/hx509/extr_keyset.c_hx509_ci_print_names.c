
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_name ;
typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_4__ {int issuer; int subject; } ;
struct TYPE_5__ {TYPE_1__ tbsCertificate; } ;
typedef TYPE_2__ Certificate ;


 TYPE_2__* _hx509_get_cert (int ) ;
 int _hx509_name_from_Name (int *,int *) ;
 int fprintf (void*,char*,char*,char*) ;
 int free (char*) ;
 int hx509_name_free (int *) ;
 int hx509_name_to_string (int ,char**) ;

int
hx509_ci_print_names(hx509_context context, void *ctx, hx509_cert c)
{
    Certificate *cert;
    hx509_name n;
    char *s, *i;

    cert = _hx509_get_cert(c);

    _hx509_name_from_Name(&cert->tbsCertificate.subject, &n);
    hx509_name_to_string(n, &s);
    hx509_name_free(&n);
    _hx509_name_from_Name(&cert->tbsCertificate.issuer, &n);
    hx509_name_to_string(n, &i);
    hx509_name_free(&n);
    fprintf(ctx, "subject: %s\nissuer: %s\n", s, i);
    free(s);
    free(i);
    return 0;
}
