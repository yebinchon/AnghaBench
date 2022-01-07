
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct status_map_st {int member_0; char* member_1; } ;
struct TYPE_3__ {int * failure_info; int text; int status; } ;
typedef TYPE_1__ TS_STATUS_INFO ;
typedef int BIO ;


 long ASN1_INTEGER_get (int ) ;
 int ASN1_STRING_print_ex (int *,int ,int ) ;
 int BIO_printf (int *,char*,...) ;
 int BIO_puts (int *,char*) ;
 scalar_t__ OSSL_NELEM (char const**) ;
 int sk_ASN1_UTF8STRING_num (int ) ;
 int sk_ASN1_UTF8STRING_value (int ,int) ;
 int ts_status_map_print (int *,struct status_map_st const*,int *) ;

int TS_STATUS_INFO_print_bio(BIO *bio, TS_STATUS_INFO *a)
{
    static const char *status_map[] = {
        "Granted.",
        "Granted with modifications.",
        "Rejected.",
        "Waiting.",
        "Revocation warning.",
        "Revoked."
    };
    static const struct status_map_st failure_map[] = {
        {134,
         "unrecognized or unsupported algorithm identifier"},
        {132,
         "transaction not permitted or supported"},
        {133,
         "the data submitted has the wrong format"},
        {130,
         "the TSA's time source is not available"},
        {128,
         "the requested TSA policy is not supported by the TSA"},
        {129,
         "the requested extension is not supported by the TSA"},
        {135,
         "the additional information requested could not be understood "
         "or is not available"},
        {131,
         "the request cannot be handled due to system failure"},
        {-1, ((void*)0)}
    };
    long status;
    int i, lines = 0;

    BIO_printf(bio, "Status: ");
    status = ASN1_INTEGER_get(a->status);
    if (0 <= status && status < (long)OSSL_NELEM(status_map))
        BIO_printf(bio, "%s\n", status_map[status]);
    else
        BIO_printf(bio, "out of bounds\n");

    BIO_printf(bio, "Status description: ");
    for (i = 0; i < sk_ASN1_UTF8STRING_num(a->text); ++i) {
        if (i > 0)
            BIO_puts(bio, "\t");
        ASN1_STRING_print_ex(bio, sk_ASN1_UTF8STRING_value(a->text, i), 0);
        BIO_puts(bio, "\n");
    }
    if (i == 0)
        BIO_printf(bio, "unspecified\n");

    BIO_printf(bio, "Failure info: ");
    if (a->failure_info != ((void*)0))
        lines = ts_status_map_print(bio, failure_map, a->failure_info);
    if (lines == 0)
        BIO_printf(bio, "unspecified");
    BIO_printf(bio, "\n");

    return 1;
}
