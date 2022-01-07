
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int member_0; int member_2; int member_1; } ;
struct TYPE_9__ {int cParams; TYPE_4__ fParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
struct TYPE_10__ {size_t size; size_t pos; void* dst; } ;
typedef TYPE_2__ ZSTD_outBuffer ;
struct TYPE_11__ {size_t size; scalar_t__ pos; void const* src; } ;
typedef TYPE_3__ ZSTD_inBuffer ;
typedef TYPE_4__ ZSTD_frameParameters ;
typedef int ZSTD_compressionParameters ;


 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_compressStream (int ,TYPE_2__*,TYPE_3__*) ;
 int ZSTD_endStream (int ,TYPE_2__*) ;
 int ZSTD_initCStream_advanced (int ,int *,int ,TYPE_1__,int ) ;
 int g_cstream ;

__attribute__((used)) static size_t
local_ZSTD_compressStream(const void* src, size_t srcSize,
                          void* dst, size_t dstCapacity,
                          void* payload)
{
    ZSTD_outBuffer buffOut;
    ZSTD_inBuffer buffIn;
    ZSTD_parameters p;
    ZSTD_frameParameters f = {1 , 0, 0};
    p.fParams = f;
    p.cParams = *(ZSTD_compressionParameters*)payload;
    ZSTD_initCStream_advanced(g_cstream, ((void*)0), 0, p, ZSTD_CONTENTSIZE_UNKNOWN);
    buffOut.dst = dst;
    buffOut.size = dstCapacity;
    buffOut.pos = 0;
    buffIn.src = src;
    buffIn.size = srcSize;
    buffIn.pos = 0;
    ZSTD_compressStream(g_cstream, &buffOut, &buffIn);
    ZSTD_endStream(g_cstream, &buffOut);
    return buffOut.pos;
}
