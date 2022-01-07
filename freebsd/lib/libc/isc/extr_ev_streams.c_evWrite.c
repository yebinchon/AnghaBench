
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct TYPE_12__ {TYPE_2__* opaque; } ;
typedef TYPE_1__ evStreamID ;
typedef int evStreamFunc ;
struct TYPE_13__ {int fd; struct TYPE_13__* next; struct TYPE_13__* prev; int * nextDone; int * prevDone; int file; scalar_t__ flags; void* uap; int func; } ;
typedef TYPE_2__ evStream ;
struct TYPE_14__ {TYPE_2__* streams; } ;
typedef TYPE_3__ evContext_p ;
struct TYPE_15__ {TYPE_3__* opaque; } ;
typedef TYPE_4__ evContext ;


 int EV_WRITE ;
 int FREE (TYPE_2__*) ;
 int OKNEW (TYPE_2__*) ;
 scalar_t__ copyvec (TYPE_2__*,struct iovec const*,int) ;
 int errno ;
 scalar_t__ evSelectFD (TYPE_4__,int,int ,int ,TYPE_2__*,int *) ;
 int writable ;

int
evWrite(evContext opaqueCtx, int fd, const struct iovec *iov, int iocnt,
 evStreamFunc func, void *uap, evStreamID *id)
{
 evContext_p *ctx = opaqueCtx.opaque;
 evStream *new;
 int save;

 OKNEW(new);
 new->func = func;
 new->uap = uap;
 new->fd = fd;
 new->flags = 0;
 if (evSelectFD(opaqueCtx, fd, EV_WRITE, writable, new, &new->file) < 0)
  goto free;
 if (copyvec(new, iov, iocnt) < 0)
  goto free;
 new->prevDone = ((void*)0);
 new->nextDone = ((void*)0);
 if (ctx->streams != ((void*)0))
  ctx->streams->prev = new;
 new->prev = ((void*)0);
 new->next = ctx->streams;
 ctx->streams = new;
 if (id != ((void*)0))
  id->opaque = new;
 return (0);
 free:
 save = errno;
 FREE(new);
 errno = save;
 return (-1);
}
