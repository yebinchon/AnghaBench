
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int sequence; } ;
typedef TYPE_3__ X509_REVOKED ;
struct TYPE_8__ {int modified; } ;
struct TYPE_7__ {TYPE_2__ enc; int revoked; } ;
struct TYPE_10__ {TYPE_1__ crl; } ;
typedef TYPE_4__ X509_CRL ;


 int sk_X509_REVOKED_num (int ) ;
 int sk_X509_REVOKED_sort (int ) ;
 TYPE_3__* sk_X509_REVOKED_value (int ,int) ;

int X509_CRL_sort(X509_CRL *c)
{
    int i;
    X509_REVOKED *r;



    sk_X509_REVOKED_sort(c->crl.revoked);
    for (i = 0; i < sk_X509_REVOKED_num(c->crl.revoked); i++) {
        r = sk_X509_REVOKED_value(c->crl.revoked, i);
        r->sequence = i;
    }
    c->crl.enc.modified = 1;
    return 1;
}
