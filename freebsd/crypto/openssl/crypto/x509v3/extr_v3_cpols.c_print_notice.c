
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* exptext; TYPE_4__* noticeref; } ;
typedef TYPE_3__ USERNOTICE ;
struct TYPE_9__ {int noticenos; TYPE_1__* organization; } ;
struct TYPE_7__ {char* data; } ;
struct TYPE_6__ {char* data; } ;
typedef TYPE_4__ NOTICEREF ;
typedef int BIO ;
typedef int ASN1_INTEGER ;


 int BIO_printf (int *,char*,int,char*,char*) ;
 int BIO_puts (int *,char*) ;
 int OPENSSL_free (char*) ;
 char* i2s_ASN1_INTEGER (int *,int *) ;
 int sk_ASN1_INTEGER_num (int ) ;
 int * sk_ASN1_INTEGER_value (int ,int) ;

__attribute__((used)) static void print_notice(BIO *out, USERNOTICE *notice, int indent)
{
    int i;
    if (notice->noticeref) {
        NOTICEREF *ref;
        ref = notice->noticeref;
        BIO_printf(out, "%*sOrganization: %s\n", indent, "",
                   ref->organization->data);
        BIO_printf(out, "%*sNumber%s: ", indent, "",
                   sk_ASN1_INTEGER_num(ref->noticenos) > 1 ? "s" : "");
        for (i = 0; i < sk_ASN1_INTEGER_num(ref->noticenos); i++) {
            ASN1_INTEGER *num;
            char *tmp;
            num = sk_ASN1_INTEGER_value(ref->noticenos, i);
            if (i)
                BIO_puts(out, ", ");
            if (num == ((void*)0))
                BIO_puts(out, "(null)");
            else {
                tmp = i2s_ASN1_INTEGER(((void*)0), num);
                if (tmp == ((void*)0))
                    return;
                BIO_puts(out, tmp);
                OPENSSL_free(tmp);
            }
        }
        BIO_puts(out, "\n");
    }
    if (notice->exptext)
        BIO_printf(out, "%*sExplicit Text: %s\n", indent, "",
                   notice->exptext->data);
}
