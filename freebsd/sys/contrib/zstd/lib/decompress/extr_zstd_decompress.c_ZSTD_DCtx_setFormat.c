
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_format_e ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_DCtx_setParameter (int *,int ,int ) ;
 int ZSTD_d_format ;

size_t ZSTD_DCtx_setFormat(ZSTD_DCtx* dctx, ZSTD_format_e format)
{
    return ZSTD_DCtx_setParameter(dctx, ZSTD_d_format, format);
}
