
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* padata; } ;
struct TYPE_7__ {unsigned int padata_type; } ;
struct TYPE_6__ {size_t len; TYPE_2__ const* val; } ;
typedef TYPE_2__ PA_DATA ;
typedef TYPE_3__ KDC_REQ ;



const PA_DATA*
_kdc_find_padata(const KDC_REQ *req, int *start, int type)
{
    if (req->padata == ((void*)0))
 return ((void*)0);

    while((size_t)*start < req->padata->len){
 (*start)++;
 if(req->padata->val[*start - 1].padata_type == (unsigned)type)
     return &req->padata->val[*start - 1];
    }
    return ((void*)0);
}
