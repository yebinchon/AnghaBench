
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* revoked; } ;
struct TYPE_9__ {int type; TYPE_1__ value; } ;
struct TYPE_8__ {scalar_t__ revocationReason; int * revocationTime; } ;
struct TYPE_7__ {int * nextUpdate; int * thisUpdate; TYPE_4__* certStatus; } ;
typedef TYPE_2__ OCSP_SINGLERESP ;
typedef TYPE_3__ OCSP_REVOKEDINFO ;
typedef TYPE_4__ OCSP_CERTSTATUS ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_ENUMERATED_get (scalar_t__) ;
 int V_OCSP_CERTSTATUS_REVOKED ;

int OCSP_single_get0_status(OCSP_SINGLERESP *single, int *reason,
                            ASN1_GENERALIZEDTIME **revtime,
                            ASN1_GENERALIZEDTIME **thisupd,
                            ASN1_GENERALIZEDTIME **nextupd)
{
    int ret;
    OCSP_CERTSTATUS *cst;
    if (!single)
        return -1;
    cst = single->certStatus;
    ret = cst->type;
    if (ret == V_OCSP_CERTSTATUS_REVOKED) {
        OCSP_REVOKEDINFO *rev = cst->value.revoked;
        if (revtime)
            *revtime = rev->revocationTime;
        if (reason) {
            if (rev->revocationReason)
                *reason = ASN1_ENUMERATED_get(rev->revocationReason);
            else
                *reason = -1;
        }
    }
    if (thisupd)
        *thisupd = single->thisUpdate;
    if (nextupd)
        *nextupd = single->nextUpdate;
    return ret;
}
