
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries; } ;
typedef TYPE_1__ ZSTD_frameLog ;


 int free (int ) ;

size_t ZSTD_seekable_frameLog_freeVec(ZSTD_frameLog* fl)
{
    if (fl != ((void*)0)) free(fl->entries);
    return 0;
}
