
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad_type; int * hh; int * h; scalar_t__ num; } ;
typedef TYPE_1__ MDC2_CTX ;


 int MDC2_BLOCK ;
 int memset (int *,int,int ) ;

int MDC2_Init(MDC2_CTX *c)
{
    c->num = 0;
    c->pad_type = 1;
    memset(&(c->h[0]), 0x52, MDC2_BLOCK);
    memset(&(c->hh[0]), 0x25, MDC2_BLOCK);
    return 1;
}
