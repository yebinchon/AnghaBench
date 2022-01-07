
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_DCtx ;


 int * ZSTD_createDStream () ;

ZBUFF_DCtx* ZBUFF_createDCtx(void)
{
    return ZSTD_createDStream();
}
