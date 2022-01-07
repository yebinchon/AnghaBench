
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ X509_POLICY_NODE ;
struct TYPE_6__ {scalar_t__ qualifier_set; int valid_policy; } ;
typedef TYPE_2__ X509_POLICY_DATA ;
typedef int BIO ;


 int BIO_printf (int *,char*,int,char*,...) ;
 int BIO_puts (int *,char*) ;
 int i2a_ASN1_OBJECT (int *,int ) ;
 scalar_t__ node_data_critical (TYPE_2__ const*) ;
 int print_qualifiers (int *,scalar_t__,int) ;

void X509_POLICY_NODE_print(BIO *out, X509_POLICY_NODE *node, int indent)
{
    const X509_POLICY_DATA *dat = node->data;

    BIO_printf(out, "%*sPolicy: ", indent, "");

    i2a_ASN1_OBJECT(out, dat->valid_policy);
    BIO_puts(out, "\n");
    BIO_printf(out, "%*s%s\n", indent + 2, "",
               node_data_critical(dat) ? "Critical" : "Non Critical");
    if (dat->qualifier_set)
        print_qualifiers(out, dat->qualifier_set, indent + 2);
    else
        BIO_printf(out, "%*sNo Qualifiers\n", indent + 2, "");
}
