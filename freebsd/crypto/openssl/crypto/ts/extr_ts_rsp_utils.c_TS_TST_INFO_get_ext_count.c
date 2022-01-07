
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ TS_TST_INFO ;


 int X509v3_get_ext_count (int ) ;

int TS_TST_INFO_get_ext_count(TS_TST_INFO *a)
{
    return X509v3_get_ext_count(a->extensions);
}
