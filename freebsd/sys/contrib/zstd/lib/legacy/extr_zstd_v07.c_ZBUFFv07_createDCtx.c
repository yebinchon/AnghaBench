
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv07_DCtx ;


 int * ZBUFFv07_createDCtx_advanced (int ) ;
 int defaultCustomMem ;

ZBUFFv07_DCtx* ZBUFFv07_createDCtx(void)
{
    return ZBUFFv07_createDCtx_advanced(defaultCustomMem);
}
