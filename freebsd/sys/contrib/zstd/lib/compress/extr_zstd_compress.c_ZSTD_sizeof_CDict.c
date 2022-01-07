
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__ const* workspace; } ;
struct TYPE_4__ {TYPE_3__ workspace; } ;
typedef TYPE_1__ ZSTD_CDict ;


 int DEBUGLOG (int,char*,unsigned int) ;
 size_t ZSTD_cwksp_sizeof (TYPE_3__*) ;

size_t ZSTD_sizeof_CDict(const ZSTD_CDict* cdict)
{
    if (cdict==((void*)0)) return 0;
    DEBUGLOG(5, "sizeof(*cdict) : %u", (unsigned)sizeof(*cdict));

    return (cdict->workspace.workspace == cdict ? 0 : sizeof(*cdict))
        + ZSTD_cwksp_sizeof(&cdict->workspace);
}
