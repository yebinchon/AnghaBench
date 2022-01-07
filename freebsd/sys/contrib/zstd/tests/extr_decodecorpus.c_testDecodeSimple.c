
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef TYPE_1__ frame_t ;
typedef int BYTE ;


 int DECOMPRESSED_BUFFER ;
 size_t ERROR (int ) ;
 int MAX_DECOMPRESSED_SIZE ;
 size_t ZSTD_decompress (int ,int ,scalar_t__,int) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int corruption_detected ;
 scalar_t__ memcmp (int ,scalar_t__,int) ;

__attribute__((used)) static size_t testDecodeSimple(frame_t* fr)
{

    size_t const ret = ZSTD_decompress(DECOMPRESSED_BUFFER, MAX_DECOMPRESSED_SIZE,
                           fr->dataStart, (BYTE*)fr->data - (BYTE*)fr->dataStart);

    if (ZSTD_isError(ret)) return ret;

    if (memcmp(DECOMPRESSED_BUFFER, fr->srcStart,
               (BYTE*)fr->src - (BYTE*)fr->srcStart) != 0) {
        return ERROR(corruption_detected);
    }

    return ret;
}
