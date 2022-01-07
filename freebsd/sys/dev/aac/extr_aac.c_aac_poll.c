
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct aac_softc* si_drv1; } ;
struct aac_softc {scalar_t__ aifq_idx; int rcv_select; int aac_aifq_lock; struct aac_fib_context* fibctx; } ;
struct aac_fib_context {scalar_t__ ctx_idx; scalar_t__ ctx_wrap; struct aac_fib_context* next; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
aac_poll(struct cdev *dev, int poll_events, struct thread *td)
{
 struct aac_softc *sc;
 struct aac_fib_context *ctx;
 int revents;

 sc = dev->si_drv1;
 revents = 0;

 mtx_lock(&sc->aac_aifq_lock);
 if ((poll_events & (POLLRDNORM | POLLIN)) != 0) {
  for (ctx = sc->fibctx; ctx; ctx = ctx->next) {
   if (ctx->ctx_idx != sc->aifq_idx || ctx->ctx_wrap) {
    revents |= poll_events & (POLLIN | POLLRDNORM);
    break;
   }
  }
 }
 mtx_unlock(&sc->aac_aifq_lock);

 if (revents == 0) {
  if (poll_events & (POLLIN | POLLRDNORM))
   selrecord(td, &sc->rcv_select);
 }

 return (revents);
}
