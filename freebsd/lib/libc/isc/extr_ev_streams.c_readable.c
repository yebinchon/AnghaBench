
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int ioDone; int ioTotal; scalar_t__ ioErrno; int timer; int iovCurCount; int iovCur; } ;
typedef TYPE_1__ evStream ;
typedef int evContext ;


 scalar_t__ EINTR ;
 int EV_STR_TIMEROK ;
 int UNUSED (int) ;
 int consume (TYPE_1__*,int) ;
 int done (int ,TYPE_1__*) ;
 scalar_t__ errno ;
 int evTouchIdleTimer (int ,int ) ;
 int readv (int,int ,int ) ;

__attribute__((used)) static void
readable(evContext opaqueCtx, void *uap, int fd, int evmask) {
 evStream *str = uap;
 int bytes;

 UNUSED(evmask);

 bytes = readv(fd, str->iovCur, str->iovCurCount);
 if (bytes > 0) {
  if ((str->flags & EV_STR_TIMEROK) != 0)
   evTouchIdleTimer(opaqueCtx, str->timer);
  consume(str, bytes);
 } else {
  if (bytes == 0)
   str->ioDone = 0;
  else {
   if (errno != EINTR) {
    str->ioDone = -1;
    str->ioErrno = errno;
   }
  }
 }
 if (str->ioDone <= 0 || str->ioDone == str->ioTotal)
  done(opaqueCtx, str);
}
