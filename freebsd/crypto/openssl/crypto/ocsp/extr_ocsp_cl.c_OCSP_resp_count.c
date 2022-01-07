
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int responses; } ;
struct TYPE_5__ {TYPE_1__ tbsResponseData; } ;
typedef TYPE_2__ OCSP_BASICRESP ;


 int sk_OCSP_SINGLERESP_num (int ) ;

int OCSP_resp_count(OCSP_BASICRESP *bs)
{
    if (!bs)
        return -1;
    return sk_OCSP_SINGLERESP_num(bs->tbsResponseData.responses);
}
