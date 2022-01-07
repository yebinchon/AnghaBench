
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int,char*,...) ;
 int CHECK_ZSTD (size_t const) ;
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ;
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_decompress (void* const,unsigned long long const,void* const,size_t) ;
 unsigned long long ZSTD_getFrameContentSize (void* const,size_t) ;
 int free (void* const) ;
 void* mallocAndLoadFile_orDie (char const*,size_t*) ;
 void* malloc_orDie (size_t) ;
 int printf (char*,char const*,unsigned int,unsigned int) ;

__attribute__((used)) static void decompress(const char* fname)
{
    size_t cSize;
    void* const cBuff = mallocAndLoadFile_orDie(fname, &cSize);






    unsigned long long const rSize = ZSTD_getFrameContentSize(cBuff, cSize);
    CHECK(rSize != ZSTD_CONTENTSIZE_ERROR, "%s: not compressed by zstd!", fname);
    CHECK(rSize != ZSTD_CONTENTSIZE_UNKNOWN, "%s: original size unknown!", fname);

    void* const rBuff = malloc_orDie((size_t)rSize);






    size_t const dSize = ZSTD_decompress(rBuff, rSize, cBuff, cSize);
    CHECK_ZSTD(dSize);

    CHECK(dSize == rSize, "Impossible because zstd will check this condition!");


    printf("%25s : %6u -> %7u \n", fname, (unsigned)cSize, (unsigned)rSize);

    free(rBuff);
    free(cBuff);
}
