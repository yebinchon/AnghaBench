
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictSize; scalar_t__ dictBuffer; } ;
typedef TYPE_1__ ZSTD_DDict ;



size_t ZSTD_sizeof_DDict(const ZSTD_DDict* ddict)
{
    if (ddict==((void*)0)) return 0;
    return sizeof(*ddict) + (ddict->dictBuffer ? ddict->dictSize : 0) ;
}
