
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_3__ {scalar_t__ reserved; } ;


 scalar_t__ ZWRAP_ZSTD_STREAM ;

int ZWRAP_isUsingZSTDdecompression(z_streamp strm)
{
    if (strm == ((void*)0)) return 0;
    return (strm->reserved == ZWRAP_ZSTD_STREAM);
}
