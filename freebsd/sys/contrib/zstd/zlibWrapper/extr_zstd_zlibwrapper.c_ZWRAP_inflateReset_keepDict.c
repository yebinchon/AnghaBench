
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_7__ {scalar_t__ totalInBytes; int decompState; } ;
typedef TYPE_2__ ZWRAP_DCtx ;
struct TYPE_6__ {scalar_t__ total_out; scalar_t__ total_in; scalar_t__ state; int reserved; } ;


 int LOG_WRAPPERD (char*) ;
 scalar_t__ ZWRAP_FORCE_ZLIB ;
 int ZWRAP_initDCtx (TYPE_2__* const) ;
 int ZWRAP_useReset ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 scalar_t__ g_ZWRAPdecompressionType ;
 int inflateReset (TYPE_1__*) ;

int ZWRAP_inflateReset_keepDict(z_streamp strm)
{
    LOG_WRAPPERD("- ZWRAP_inflateReset_keepDict\n");
    if (g_ZWRAPdecompressionType == ZWRAP_FORCE_ZLIB || !strm->reserved)
        return inflateReset(strm);

    { ZWRAP_DCtx* const zwd = (ZWRAP_DCtx*) strm->state;
        if (zwd == ((void*)0)) return Z_STREAM_ERROR;
        ZWRAP_initDCtx(zwd);
        zwd->decompState = ZWRAP_useReset;
        zwd->totalInBytes = 0;
    }

    strm->total_in = 0;
    strm->total_out = 0;
    return Z_OK;
}
