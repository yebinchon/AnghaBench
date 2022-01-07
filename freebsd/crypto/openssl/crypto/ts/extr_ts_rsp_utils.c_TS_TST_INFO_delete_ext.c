
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {int extensions; } ;
typedef TYPE_1__ TS_TST_INFO ;


 int * X509v3_delete_ext (int ,int) ;

X509_EXTENSION *TS_TST_INFO_delete_ext(TS_TST_INFO *a, int loc)
{
    return X509v3_delete_ext(a->extensions, loc);
}
