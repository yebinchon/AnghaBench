
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * keyid; } ;
typedef TYPE_2__ X509_CERT_AUX ;
struct TYPE_9__ {TYPE_1__* aux; } ;
typedef TYPE_3__ X509 ;
struct TYPE_7__ {int * keyid; } ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_STRING_set (int *,unsigned char const*,int) ;
 TYPE_2__* aux_get (TYPE_3__*) ;

int X509_keyid_set1(X509 *x, const unsigned char *id, int len)
{
    X509_CERT_AUX *aux;
    if (!id) {
        if (!x || !x->aux || !x->aux->keyid)
            return 1;
        ASN1_OCTET_STRING_free(x->aux->keyid);
        x->aux->keyid = ((void*)0);
        return 1;
    }
    if ((aux = aux_get(x)) == ((void*)0))
        return 0;
    if (aux->keyid == ((void*)0)
        && (aux->keyid = ASN1_OCTET_STRING_new()) == ((void*)0))
        return 0;
    return ASN1_STRING_set(aux->keyid, id, len);
}
