
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef int ZSTD_frameParameters ;
typedef int ZSTD_compressionParameters ;



__attribute__((used)) static ZSTD_parameters FUZ_makeParams(ZSTD_compressionParameters cParams, ZSTD_frameParameters fParams)
{
    ZSTD_parameters params;
    params.cParams = cParams;
    params.fParams = fParams;
    return params;
}
