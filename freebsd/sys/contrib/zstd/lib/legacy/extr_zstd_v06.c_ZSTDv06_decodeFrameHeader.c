
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int windowLog; } ;
struct TYPE_4__ {TYPE_2__ fParams; } ;
typedef TYPE_1__ ZSTDv06_DCtx ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_32bits () ;
 size_t ZSTDv06_getFrameParams (TYPE_2__*,void const*,size_t) ;
 int frameParameter_unsupported ;

__attribute__((used)) static size_t ZSTDv06_decodeFrameHeader(ZSTDv06_DCtx* zc, const void* src, size_t srcSize)
{
    size_t const result = ZSTDv06_getFrameParams(&(zc->fParams), src, srcSize);
    if ((MEM_32bits()) && (zc->fParams.windowLog > 25)) return ERROR(frameParameter_unsupported);
    return result;
}
