
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_5__ {int workspace; int customMem; } ;
typedef TYPE_1__ ZSTD_CDict ;


 int ZSTD_cwksp_free (int *,int const) ;
 int ZSTD_cwksp_owns_buffer (int *,TYPE_1__*) ;
 int ZSTD_free (TYPE_1__*,int const) ;

size_t ZSTD_freeCDict(ZSTD_CDict* cdict)
{
    if (cdict==((void*)0)) return 0;
    { ZSTD_customMem const cMem = cdict->customMem;
        int cdictInWorkspace = ZSTD_cwksp_owns_buffer(&cdict->workspace, cdict);
        ZSTD_cwksp_free(&cdict->workspace, cMem);
        if (!cdictInWorkspace) {
            ZSTD_free(cdict, cMem);
        }
        return 0;
    }
}
