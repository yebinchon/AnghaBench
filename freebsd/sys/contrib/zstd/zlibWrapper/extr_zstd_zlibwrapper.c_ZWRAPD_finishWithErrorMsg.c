
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int ZWRAP_DCtx ;
struct TYPE_4__ {char* msg; scalar_t__ state; } ;


 int ZWRAPD_finishWithError (int * const,TYPE_1__*,int ) ;
 int Z_STREAM_ERROR ;

__attribute__((used)) static int ZWRAPD_finishWithErrorMsg(z_streamp strm, char* message)
{
    ZWRAP_DCtx* const zwd = (ZWRAP_DCtx*) strm->state;
    strm->msg = message;
    if (zwd == ((void*)0)) return Z_STREAM_ERROR;

    return ZWRAPD_finishWithError(zwd, strm, 0);
}
