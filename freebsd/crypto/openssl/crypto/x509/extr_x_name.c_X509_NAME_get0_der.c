
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bytes; } ;
typedef TYPE_2__ X509_NAME ;
struct TYPE_5__ {size_t length; scalar_t__ data; } ;


 scalar_t__ i2d_X509_NAME (TYPE_2__*,int *) ;

int X509_NAME_get0_der(X509_NAME *nm, const unsigned char **pder,
                       size_t *pderlen)
{

    if (i2d_X509_NAME(nm, ((void*)0)) <= 0)
        return 0;
    if (pder != ((void*)0))
        *pder = (unsigned char *)nm->bytes->data;
    if (pderlen != ((void*)0))
        *pderlen = nm->bytes->length;
    return 1;
}
