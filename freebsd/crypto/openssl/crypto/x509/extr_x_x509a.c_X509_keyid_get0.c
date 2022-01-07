
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* aux; } ;
typedef TYPE_3__ X509 ;
struct TYPE_6__ {TYPE_1__* keyid; } ;
struct TYPE_5__ {int length; unsigned char* data; } ;



unsigned char *X509_keyid_get0(X509 *x, int *len)
{
    if (!x->aux || !x->aux->keyid)
        return ((void*)0);
    if (len)
        *len = x->aux->keyid->length;
    return x->aux->keyid->data;
}
