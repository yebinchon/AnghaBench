
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64b_t ;
typedef int u08b_t ;
typedef int X ;
struct TYPE_7__ {size_t bCnt; int hashBitLen; int * T; } ;
struct TYPE_6__ {int * X; TYPE_3__ h; int * b; } ;
typedef TYPE_1__ Skein1024_Ctxt_t ;


 int OUT_FINAL ;
 size_t SKEIN1024_BLOCK_BYTES ;
 int SKEIN1024_STATE_WORDS ;
 int SKEIN_FAIL ;
 int SKEIN_SUCCESS ;
 int SKEIN_T1_FLAG_FINAL ;
 int Skein1024_Process_Block (TYPE_1__*,int *,int,int) ;
 int Skein_Assert (int,int ) ;
 int Skein_Put64_LSB_First (int *,int *,size_t) ;
 int Skein_Show_Final (int,TYPE_3__*,size_t,int *) ;
 int Skein_Start_New_Type (TYPE_1__*,int ) ;
 int Skein_Swap64 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

int Skein1024_Final(Skein1024_Ctxt_t *ctx, u08b_t *hashVal)
    {
    size_t i,n,byteCnt;
    u64b_t X[SKEIN1024_STATE_WORDS];
    Skein_Assert(ctx->h.bCnt <= SKEIN1024_BLOCK_BYTES,SKEIN_FAIL);

    ctx->h.T[1] |= SKEIN_T1_FLAG_FINAL;
    if (ctx->h.bCnt < SKEIN1024_BLOCK_BYTES)
        memset(&ctx->b[ctx->h.bCnt],0,SKEIN1024_BLOCK_BYTES - ctx->h.bCnt);

    Skein1024_Process_Block(ctx,ctx->b,1,ctx->h.bCnt);


    byteCnt = (ctx->h.hashBitLen + 7) >> 3;


    memset(ctx->b,0,sizeof(ctx->b));
    memcpy(X,ctx->X,sizeof(X));
    for (i=0;i*SKEIN1024_BLOCK_BYTES < byteCnt;i++)
        {
        ((u64b_t *)ctx->b)[0]= Skein_Swap64((u64b_t) i);
        Skein_Start_New_Type(ctx,OUT_FINAL);
        Skein1024_Process_Block(ctx,ctx->b,1,sizeof(u64b_t));
        n = byteCnt - i*SKEIN1024_BLOCK_BYTES;
        if (n >= SKEIN1024_BLOCK_BYTES)
            n = SKEIN1024_BLOCK_BYTES;
        Skein_Put64_LSB_First(hashVal+i*SKEIN1024_BLOCK_BYTES,ctx->X,n);
        Skein_Show_Final(1024,&ctx->h,n,hashVal+i*SKEIN1024_BLOCK_BYTES);
        memcpy(ctx->X,X,sizeof(X));
        }
    return SKEIN_SUCCESS;
    }
