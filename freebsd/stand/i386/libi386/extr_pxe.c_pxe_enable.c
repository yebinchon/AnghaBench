
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int segment; scalar_t__ offset; } ;
struct TYPE_5__ {TYPE_1__ PXEPtr; } ;
typedef TYPE_2__ pxenv_t ;
typedef int pxe_t ;


 scalar_t__ PTOV (scalar_t__) ;
 int * pxe_call ;
 int * pxe_p ;
 TYPE_2__* pxenv_p ;

void
pxe_enable(void *pxeinfo)
{
 pxenv_p = (pxenv_t *)pxeinfo;
 pxe_p = (pxe_t *)PTOV(pxenv_p->PXEPtr.segment * 16 +
     pxenv_p->PXEPtr.offset);
 pxe_call = ((void*)0);
}
