
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adv; int comprParams; int cLevel; int dictBufferSize; int dictBuffer; int cctx; } ;
typedef TYPE_1__ BMK_initCCtxArgs ;


 int BMK_initCCtx (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static size_t local_initCCtx(void* payload) {
    BMK_initCCtxArgs* ag = (BMK_initCCtxArgs*)payload;
    BMK_initCCtx(ag->cctx, ag->dictBuffer, ag->dictBufferSize, ag->cLevel, ag->comprParams, ag->adv);
    return 0;
}
