
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;
typedef int U16 ;
typedef int BYTE ;


 int MEM_writeLE16 (int * const,int ) ;
 int MEM_writeLE32 (int * const,size_t) ;
 int RETURN_ERROR_IF (int,int ) ;
 int assert (int ) ;
 int dstSize_tooSmall ;
 int memcpy (int * const,void const*,size_t) ;
 int set_basic ;

size_t ZSTD_noCompressLiterals (void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    BYTE* const ostart = (BYTE* const)dst;
    U32 const flSize = 1 + (srcSize>31) + (srcSize>4095);

    RETURN_ERROR_IF(srcSize + flSize > dstCapacity, dstSize_tooSmall);

    switch(flSize)
    {
        case 1:
            ostart[0] = (BYTE)((U32)set_basic + (srcSize<<3));
            break;
        case 2:
            MEM_writeLE16(ostart, (U16)((U32)set_basic + (1<<2) + (srcSize<<4)));
            break;
        case 3:
            MEM_writeLE32(ostart, (U32)((U32)set_basic + (3<<2) + (srcSize<<4)));
            break;
        default:
            assert(0);
    }

    memcpy(ostart + flSize, src, srcSize);
    return srcSize + flSize;
}
