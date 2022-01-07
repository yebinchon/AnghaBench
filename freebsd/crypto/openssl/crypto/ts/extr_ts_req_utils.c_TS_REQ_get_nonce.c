
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* nonce; } ;
typedef TYPE_1__ TS_REQ ;
typedef int ASN1_INTEGER ;



const ASN1_INTEGER *TS_REQ_get_nonce(const TS_REQ *a)
{
    return a->nonce;
}
