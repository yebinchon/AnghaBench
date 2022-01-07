
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ TS_REQ ;


 int ASN1_INTEGER_set (int ,long) ;

int TS_REQ_set_version(TS_REQ *a, long version)
{
    return ASN1_INTEGER_set(a->version, version);
}
