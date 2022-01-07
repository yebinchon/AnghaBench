
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_CCtx ;


 size_t ZSTD_freeCStream (int *) ;

size_t ZBUFF_freeCCtx(ZBUFF_CCtx* zbc)
{
    return ZSTD_freeCStream(zbc);
}
