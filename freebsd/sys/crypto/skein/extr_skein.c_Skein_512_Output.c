
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64b_t ;
typedef int u08b_t ;
typedef int X ;
struct TYPE_7__ {size_t bCnt; int hashBitLen; } ;
struct TYPE_6__ {int * X; TYPE_3__ h; scalar_t__ b; } ;
typedef TYPE_1__ Skein_512_Ctxt_t ;


 int OUT_FINAL ;
 size_t SKEIN_512_BLOCK_BYTES ;
 int SKEIN_512_STATE_WORDS ;
 int SKEIN_FAIL ;
 int SKEIN_SUCCESS ;
 int Skein_512_Process_Block (TYPE_1__*,scalar_t__,int,int) ;
 int Skein_Assert (int,int ) ;
 int Skein_Put64_LSB_First (int *,int *,size_t) ;
 int Skein_Show_Final (int,TYPE_3__*,size_t,int *) ;
 int Skein_Start_New_Type (TYPE_1__*,int ) ;
 int Skein_Swap64 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (scalar_t__,int ,int) ;

int Skein_512_Output(Skein_512_Ctxt_t *ctx, u08b_t *hashVal)
    {
    size_t i,n,byteCnt;
    u64b_t X[SKEIN_512_STATE_WORDS];
    Skein_Assert(ctx->h.bCnt <= SKEIN_512_BLOCK_BYTES,SKEIN_FAIL);


    byteCnt = (ctx->h.hashBitLen + 7) >> 3;


    memset(ctx->b,0,sizeof(ctx->b));
    memcpy(X,ctx->X,sizeof(X));
    for (i=0;i*SKEIN_512_BLOCK_BYTES < byteCnt;i++)
        {
        ((u64b_t *)ctx->b)[0]= Skein_Swap64((u64b_t) i);
        Skein_Start_New_Type(ctx,OUT_FINAL);
        Skein_512_Process_Block(ctx,ctx->b,1,sizeof(u64b_t));
        n = byteCnt - i*SKEIN_512_BLOCK_BYTES;
        if (n >= SKEIN_512_BLOCK_BYTES)
            n = SKEIN_512_BLOCK_BYTES;
        Skein_Put64_LSB_First(hashVal+i*SKEIN_512_BLOCK_BYTES,ctx->X,n);
        Skein_Show_Final(256,&ctx->h,n,hashVal+i*SKEIN_512_BLOCK_BYTES);
        memcpy(ctx->X,X,sizeof(X));
        }
    return SKEIN_SUCCESS;
    }
