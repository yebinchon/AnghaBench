
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ ctx_handler; int ctx_lock; int ctx_cond; } ;
typedef TYPE_1__ libusb_context ;


 int CLOCK_MONOTONIC ;
 int DPRINTF (TYPE_1__*,int ,char*) ;
 int ETIMEDOUT ;
 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;
 int LIBUSB_DEBUG_FUNCTION ;
 int LIBUSB_ERROR_OTHER ;
 scalar_t__ NO_THREAD ;
 int clock_gettime (int ,struct timespec*) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_wait (int *,int *) ;
 void* pthread_self () ;

int
libusb_wait_for_event(libusb_context *ctx, struct timeval *tv)
{
 struct timespec ts;
 int err;

 ctx = GET_CONTEXT(ctx);
 DPRINTF(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_wait_for_event enter");

 if (tv == ((void*)0)) {
  pthread_cond_wait(&ctx->ctx_cond,
      &ctx->ctx_lock);

  if (ctx->ctx_handler == NO_THREAD)
   ctx->ctx_handler = pthread_self();
  return (0);
 }
 err = clock_gettime(CLOCK_MONOTONIC, &ts);
 if (err < 0)
  return (LIBUSB_ERROR_OTHER);





 ts.tv_sec += tv->tv_sec;
 ts.tv_nsec += tv->tv_usec * 1000;
 if (ts.tv_nsec >= 1000000000) {
  ts.tv_nsec -= 1000000000;
  ts.tv_sec++;
 }
 err = pthread_cond_timedwait(&ctx->ctx_cond,
     &ctx->ctx_lock, &ts);

 if (ctx->ctx_handler == NO_THREAD)
  ctx->ctx_handler = pthread_self();

 if (err == ETIMEDOUT)
  return (1);

 return (0);
}
