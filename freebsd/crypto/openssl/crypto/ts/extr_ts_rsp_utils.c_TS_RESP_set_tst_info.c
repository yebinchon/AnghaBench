
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tst_info; int * token; } ;
typedef int TS_TST_INFO ;
typedef TYPE_1__ TS_RESP ;
typedef int PKCS7 ;


 int PKCS7_free (int *) ;
 int TS_TST_INFO_free (int *) ;

void TS_RESP_set_tst_info(TS_RESP *a, PKCS7 *p7, TS_TST_INFO *tst_info)
{
    PKCS7_free(a->token);
    a->token = p7;
    TS_TST_INFO_free(a->tst_info);
    a->tst_info = tst_info;
}
