
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* entries; } ;
struct TYPE_6__ {TYPE_1__ seekTable; int dstream; } ;
typedef TYPE_2__ ZSTD_seekable ;


 int ZSTD_freeDStream (int ) ;
 int free (TYPE_2__*) ;

size_t ZSTD_seekable_free(ZSTD_seekable* zs)
{
    if (zs == ((void*)0)) return 0;
    ZSTD_freeDStream(zs->dstream);
    free(zs->seekTable.entries);
    free(zs);

    return 0;
}
