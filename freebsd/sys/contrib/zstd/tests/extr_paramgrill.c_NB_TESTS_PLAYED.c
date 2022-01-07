
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int paramValues_t ;
typedef int cParams ;
typedef int ZSTD_compressionParameters ;
typedef int BYTE ;


 unsigned long long const PARAMTABLEMASK ;
 unsigned long long XXH64 (int const*,int,int ) ;
 int * g_alreadyTested ;
 int pvalsToCParams (int ) ;
 int sanitizeParams (int ) ;

__attribute__((used)) static BYTE* NB_TESTS_PLAYED(paramValues_t p)
{
    ZSTD_compressionParameters const cParams = pvalsToCParams(sanitizeParams(p));
    unsigned long long const h64 = XXH64(&cParams, sizeof(cParams), 0);
    return &g_alreadyTested[(h64 >> 3) & PARAMTABLEMASK];
}
