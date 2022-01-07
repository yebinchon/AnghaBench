
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_sec; } ;
struct aac_softc {int aac_daemontime; int aac_io_lock; } ;
struct aac_fib {scalar_t__ data; } ;


 int MA_OWNED ;
 int SendHostTime ;
 int aac_alloc_sync_fib (struct aac_softc*,struct aac_fib**) ;
 int aac_release_sync_fib (struct aac_softc*) ;
 int aac_sync_fib (struct aac_softc*,int ,int ,struct aac_fib*,int) ;
 scalar_t__ callout_active (int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_schedule (int *,int) ;
 int getmicrotime (struct timeval*) ;
 int hz ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
aac_daemon(void *arg)
{
 struct timeval tv;
 struct aac_softc *sc;
 struct aac_fib *fib;

 sc = arg;
 mtx_assert(&sc->aac_io_lock, MA_OWNED);

 if (callout_pending(&sc->aac_daemontime) ||
     callout_active(&sc->aac_daemontime) == 0)
  return;
 getmicrotime(&tv);
 aac_alloc_sync_fib(sc, &fib);
 *(uint32_t *)fib->data = tv.tv_sec;
 aac_sync_fib(sc, SendHostTime, 0, fib, sizeof(uint32_t));
 aac_release_sync_fib(sc);
 callout_schedule(&sc->aac_daemontime, 30 * 60 * hz);
}
