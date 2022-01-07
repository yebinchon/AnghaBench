
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int ZWRAP_CCtx ;
struct TYPE_3__ {int * state; } ;


 int LOG_WRAPPERC (char*,int) ;
 int ZWRAP_freeCCtx (int *) ;
 int Z_STREAM_ERROR ;

__attribute__((used)) static int ZWRAPC_finishWithError(ZWRAP_CCtx* zwc, z_streamp strm, int error)
{
    LOG_WRAPPERC("- ZWRAPC_finishWithError=%d\n", error);
    if (zwc) ZWRAP_freeCCtx(zwc);
    if (strm) strm->state = ((void*)0);
    return (error) ? error : Z_STREAM_ERROR;
}
