
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long str_flags; } ;
typedef TYPE_1__ ASN1_PCTX ;



void ASN1_PCTX_set_str_flags(ASN1_PCTX *p, unsigned long flags)
{
    p->str_flags = flags;
}
