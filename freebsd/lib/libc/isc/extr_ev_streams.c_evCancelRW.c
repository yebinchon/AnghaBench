
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct TYPE_16__ {TYPE_5__* opaque; } ;
typedef TYPE_4__ evStreamID ;
struct TYPE_20__ {scalar_t__ opaque; } ;
struct TYPE_17__ {int iovOrigCount; int iovOrig; TYPE_9__ file; TYPE_3__* prevDone; struct TYPE_17__* nextDone; TYPE_2__* prev; TYPE_1__* next; } ;
typedef TYPE_5__ evStream ;
struct TYPE_18__ {TYPE_3__* strLast; TYPE_5__* strDone; TYPE_1__* streams; } ;
typedef TYPE_6__ evContext_p ;
struct TYPE_19__ {TYPE_6__* opaque; } ;
typedef TYPE_7__ evContext ;
struct TYPE_15__ {TYPE_5__* nextDone; } ;
struct TYPE_14__ {TYPE_1__* next; } ;
struct TYPE_13__ {TYPE_2__* prev; } ;


 int FREE (TYPE_5__*) ;
 int evDeselectFD (TYPE_7__,TYPE_9__) ;
 int memput (int ,int) ;

int
evCancelRW(evContext opaqueCtx, evStreamID id) {
 evContext_p *ctx = opaqueCtx.opaque;
 evStream *old = id.opaque;
 if (old->prev != ((void*)0))
  old->prev->next = old->next;
 else
  ctx->streams = old->next;
 if (old->next != ((void*)0))
  old->next->prev = old->prev;





 if (old->prevDone == ((void*)0) && old->nextDone == ((void*)0)) {





  if (ctx->strDone == old) {
   ctx->strDone = ((void*)0);
   ctx->strLast = ((void*)0);
  }
 } else {
  if (old->prevDone != ((void*)0))
   old->prevDone->nextDone = old->nextDone;
  else
   ctx->strDone = old->nextDone;
  if (old->nextDone != ((void*)0))
   old->nextDone->prevDone = old->prevDone;
  else
   ctx->strLast = old->prevDone;
 }


 if (old->file.opaque)
  evDeselectFD(opaqueCtx, old->file);
 memput(old->iovOrig, sizeof (struct iovec) * old->iovOrigCount);
 FREE(old);
 return (0);
}
