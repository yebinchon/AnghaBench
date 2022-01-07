
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * dstream; } ;
typedef TYPE_1__ ZSTD_seekable ;


 int * ZSTD_createDStream () ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

ZSTD_seekable* ZSTD_seekable_create(void)
{
    ZSTD_seekable* zs = malloc(sizeof(ZSTD_seekable));

    if (zs == ((void*)0)) return ((void*)0);


    memset(zs, 0, sizeof(*zs));

    zs->dstream = ZSTD_createDStream();
    if (zs->dstream == ((void*)0)) {
        free(zs);
        return ((void*)0);
    }

    return zs;
}
