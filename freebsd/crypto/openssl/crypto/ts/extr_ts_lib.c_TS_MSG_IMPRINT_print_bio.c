
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hashed_msg; int hash_algo; } ;
typedef TYPE_1__ TS_MSG_IMPRINT ;
typedef int BIO ;
typedef int ASN1_OCTET_STRING ;


 scalar_t__ ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int BIO_dump_indent (int *,char const*,int ,int) ;
 int BIO_printf (int *,char*) ;
 int TS_X509_ALGOR_print_bio (int *,int ) ;

int TS_MSG_IMPRINT_print_bio(BIO *bio, TS_MSG_IMPRINT *a)
{
    ASN1_OCTET_STRING *msg;

    TS_X509_ALGOR_print_bio(bio, a->hash_algo);

    BIO_printf(bio, "Message data:\n");
    msg = a->hashed_msg;
    BIO_dump_indent(bio, (const char *)ASN1_STRING_get0_data(msg),
                    ASN1_STRING_length(msg), 4);

    return 1;
}
