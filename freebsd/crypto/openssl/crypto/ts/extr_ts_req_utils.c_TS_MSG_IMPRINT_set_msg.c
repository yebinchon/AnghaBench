
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hashed_msg; } ;
typedef TYPE_1__ TS_MSG_IMPRINT ;


 int ASN1_OCTET_STRING_set (int ,unsigned char*,int) ;

int TS_MSG_IMPRINT_set_msg(TS_MSG_IMPRINT *a, unsigned char *d, int len)
{
    return ASN1_OCTET_STRING_set(a->hashed_msg, d, len);
}
