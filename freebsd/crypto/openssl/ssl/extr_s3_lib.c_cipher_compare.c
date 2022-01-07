
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
typedef TYPE_1__ SSL_CIPHER ;



__attribute__((used)) static int cipher_compare(const void *a, const void *b)
{
    const SSL_CIPHER *ap = (const SSL_CIPHER *)a;
    const SSL_CIPHER *bp = (const SSL_CIPHER *)b;

    if (ap->id == bp->id)
        return 0;
    return ap->id < bp->id ? -1 : 1;
}
