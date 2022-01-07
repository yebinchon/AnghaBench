
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct cv {int sleeping; } ;


 int EWOULDBLOCK ;
 int callout_process (int) ;
 int delay (int) ;
 int hz ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int ticks ;
 int usb_idle () ;

int
cv_timedwait(struct cv *cv, struct mtx *mtx, int timo)
{
 int start = ticks;
 int delta;
 int time = 0;

 if (cv->sleeping)
  return (EWOULDBLOCK);

 cv->sleeping = 1;

 while (cv->sleeping) {
  if (timo >= 0) {
   delta = ticks - start;
   if (delta >= timo || delta < 0)
    break;
  }
  mtx_unlock(mtx);

  usb_idle();

  if (++time >= (1000000 / hz)) {
   time = 0;
   callout_process(1);
  }


  delay(1);

  mtx_lock(mtx);
 }

 if (cv->sleeping) {
  cv->sleeping = 0;
  return (EWOULDBLOCK);
 }
 return (0);
}
