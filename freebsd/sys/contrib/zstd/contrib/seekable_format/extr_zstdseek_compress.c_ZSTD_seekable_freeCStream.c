
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int framelog; int cstream; } ;
typedef TYPE_1__ ZSTD_seekable_CStream ;


 int ZSTD_freeCStream (int ) ;
 int ZSTD_seekable_frameLog_freeVec (int *) ;
 int free (TYPE_1__*) ;

size_t ZSTD_seekable_freeCStream(ZSTD_seekable_CStream* zcs)
{
    if (zcs == ((void*)0)) return 0;
    ZSTD_freeCStream(zcs->cstream);
    ZSTD_seekable_frameLog_freeVec(&zcs->framelog);
    free(zcs);

    return 0;
}
