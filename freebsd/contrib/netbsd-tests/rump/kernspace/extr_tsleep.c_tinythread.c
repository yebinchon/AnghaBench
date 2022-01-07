
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EWOULDBLOCK ;
 int NTHREADS ;
 int PNORELOCK ;
 int kthread_exit (int ) ;
 int mtsleep (void (*) (void*),int ,char*,int,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mymtx ;
 int panic (char*,...) ;
 void rumptest_tsleep (void*) ;
 int wakeup (void (*) (void*)) ;

__attribute__((used)) static void
tinythread(void *arg)
{
 static int wakeups;
 int i, rv;
 bool relock = ((uintptr_t)arg % 2) == 0;

 for (i = 0; i < 1000; i++) {
  mutex_enter(&mymtx);
  wakeup(tinythread);
  if (wakeups >= NTHREADS-1) {
   mutex_exit(&mymtx);
   break;
  }
  rv = mtsleep(tinythread, relock ? 0 : PNORELOCK,
      "haa", 0, &mymtx);
  if (relock)
   mutex_exit(&mymtx);
  if (rv != 0)
   panic("mtsleep failed");
 }

 mutex_enter(&mymtx);
 wakeups++;
 wakeup(tinythread);

 rv = mtsleep(rumptest_tsleep, PNORELOCK, "kepuli", 1, &mymtx);
 if (rv != EWOULDBLOCK)
  panic("mtsleep unexpected return value %d", rv);

 kthread_exit(0);
}
