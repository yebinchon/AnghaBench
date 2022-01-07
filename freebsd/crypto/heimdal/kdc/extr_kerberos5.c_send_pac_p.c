
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_boolean ;
struct TYPE_7__ {int length; int data; } ;
struct TYPE_9__ {TYPE_1__ padata_value; } ;
struct TYPE_8__ {int include_pac; } ;
typedef TYPE_2__ PA_PAC_REQUEST ;
typedef TYPE_3__ PA_DATA ;
typedef int KDC_REQ ;


 int FALSE ;
 int KRB5_PADATA_PA_PAC_REQUEST ;
 int TRUE ;
 TYPE_3__* _kdc_find_padata (int *,int*,int ) ;
 scalar_t__ decode_PA_PAC_REQUEST (int ,int ,TYPE_2__*,int *) ;
 int free_PA_PAC_REQUEST (TYPE_2__*) ;

__attribute__((used)) static krb5_boolean
send_pac_p(krb5_context context, KDC_REQ *req)
{
    krb5_error_code ret;
    PA_PAC_REQUEST pacreq;
    const PA_DATA *pa;
    int i = 0;

    pa = _kdc_find_padata(req, &i, KRB5_PADATA_PA_PAC_REQUEST);
    if (pa == ((void*)0))
 return TRUE;

    ret = decode_PA_PAC_REQUEST(pa->padata_value.data,
    pa->padata_value.length,
    &pacreq,
    ((void*)0));
    if (ret)
 return TRUE;
    i = pacreq.include_pac;
    free_PA_PAC_REQUEST(&pacreq);
    if (i == 0)
 return FALSE;
    return TRUE;
}
