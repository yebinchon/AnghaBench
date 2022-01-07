
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int ZWRAP_CCtx ;
struct TYPE_4__ {char* msg; scalar_t__ state; } ;


 int ZWRAPC_finishWithError (int *,TYPE_1__*,int ) ;
 int Z_STREAM_ERROR ;

__attribute__((used)) static int ZWRAPC_finishWithErrorMsg(z_streamp strm, char* message)
{
    ZWRAP_CCtx* zwc = (ZWRAP_CCtx*) strm->state;
    strm->msg = message;
    if (zwc == ((void*)0)) return Z_STREAM_ERROR;

    return ZWRAPC_finishWithError(zwc, strm, 0);
}
