
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ZSTD_format_e ;


 size_t ZSTD_FRAMEHEADERSIZE_PREFIX (scalar_t__) ;
 scalar_t__ ZSTD_f_zstd1 ;
 scalar_t__ ZSTD_f_zstd1_magicless ;
 int assert (int) ;

__attribute__((used)) static size_t ZSTD_startingInputLength(ZSTD_format_e format)
{
    size_t const startingInputLength = ZSTD_FRAMEHEADERSIZE_PREFIX(format);

    assert( (format == ZSTD_f_zstd1) || (format == ZSTD_f_zstd1_magicless) );
    return startingInputLength;
}
