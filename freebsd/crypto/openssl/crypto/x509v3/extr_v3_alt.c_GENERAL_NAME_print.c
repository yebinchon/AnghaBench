
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rid; TYPE_1__* ip; int dirn; int ia5; } ;
struct TYPE_7__ {int type; TYPE_2__ d; } ;
struct TYPE_5__ {unsigned char* data; int length; } ;
typedef TYPE_3__ GENERAL_NAME ;
typedef int BIO ;


 int ASN1_STRING_print (int *,int ) ;
 int BIO_printf (int *,char*,...) ;
 int BIO_puts (int *,char*) ;
 int X509_NAME_print_ex (int *,int ,int ,int ) ;
 int XN_FLAG_ONELINE ;
 int i2a_ASN1_OBJECT (int *,int ) ;

int GENERAL_NAME_print(BIO *out, GENERAL_NAME *gen)
{
    unsigned char *p;
    int i;
    switch (gen->type) {
    case 131:
        BIO_printf(out, "othername:<unsupported>");
        break;

    case 128:
        BIO_printf(out, "X400Name:<unsupported>");
        break;

    case 134:

        BIO_printf(out, "EdiPartyName:<unsupported>");
        break;

    case 133:
        BIO_printf(out, "email:");
        ASN1_STRING_print(out, gen->d.ia5);
        break;

    case 135:
        BIO_printf(out, "DNS:");
        ASN1_STRING_print(out, gen->d.ia5);
        break;

    case 129:
        BIO_printf(out, "URI:");
        ASN1_STRING_print(out, gen->d.ia5);
        break;

    case 136:
        BIO_printf(out, "DirName:");
        X509_NAME_print_ex(out, gen->d.dirn, 0, XN_FLAG_ONELINE);
        break;

    case 132:
        p = gen->d.ip->data;
        if (gen->d.ip->length == 4)
            BIO_printf(out, "IP Address:%d.%d.%d.%d", p[0], p[1], p[2], p[3]);
        else if (gen->d.ip->length == 16) {
            BIO_printf(out, "IP Address");
            for (i = 0; i < 8; i++) {
                BIO_printf(out, ":%X", p[0] << 8 | p[1]);
                p += 2;
            }
            BIO_puts(out, "\n");
        } else {
            BIO_printf(out, "IP Address:<invalid>");
            break;
        }
        break;

    case 130:
        BIO_printf(out, "Registered ID:");
        i2a_ASN1_OBJECT(out, gen->d.rid);
        break;
    }
    return 1;
}
