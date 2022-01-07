
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ TS_STATUS_INFO ;


 int ASN1_INTEGER_set (int ,int) ;

int TS_STATUS_INFO_set_status(TS_STATUS_INFO *a, int i)
{
    return ASN1_INTEGER_set(a->status, i);
}
