
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; scalar_t__ nextSrc; } ;
typedef TYPE_1__ ZSTD_window_t ;


 size_t ZSTD_CURRENT_MAX ;
 size_t ZSTD_INDEXOVERFLOW_MARGIN ;

__attribute__((used)) static int ZSTD_indexTooCloseToMax(ZSTD_window_t w)
{
    return (size_t)(w.nextSrc - w.base) > (ZSTD_CURRENT_MAX - ZSTD_INDEXOVERFLOW_MARGIN);
}
