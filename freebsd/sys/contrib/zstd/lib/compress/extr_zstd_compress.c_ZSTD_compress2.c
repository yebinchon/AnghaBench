
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 int FORWARD_IF_ERROR (size_t const) ;
 int RETURN_ERROR (int ) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 size_t ZSTD_compressStream2_simpleArgs (int *,void*,size_t,size_t*,void const*,size_t,size_t*,int ) ;
 int ZSTD_e_end ;
 int ZSTD_reset_session_only ;
 int assert (int) ;
 int dstSize_tooSmall ;

size_t ZSTD_compress2(ZSTD_CCtx* cctx,
                      void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    ZSTD_CCtx_reset(cctx, ZSTD_reset_session_only);
    { size_t oPos = 0;
        size_t iPos = 0;
        size_t const result = ZSTD_compressStream2_simpleArgs(cctx,
                                        dst, dstCapacity, &oPos,
                                        src, srcSize, &iPos,
                                        ZSTD_e_end);
        FORWARD_IF_ERROR(result);
        if (result != 0) {
            assert(oPos == dstCapacity);
            RETURN_ERROR(dstSize_tooSmall);
        }
        assert(iPos == srcSize);
        return oPos;
    }
}
