
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADJINTERVAL ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 scalar_t__ MAX_UNSYNC ;
 int NOTICE_INTERVAL ;
 scalar_t__ NO_SYNC ;
 int SIGALRM ;
 scalar_t__ SYNC ;
 int alarm (int) ;
 scalar_t__ last_sync ;
 int periodic_adjust () ;
 int signal (int ,void (*) (int)) ;
 scalar_t__ sync_state ;
 int syslog (int ,char*) ;
 int ticks ;

__attribute__((used)) static void
tick(
     int signum
     )
{
 static unsigned long last_notice = 0;


 (void)signal(SIGALRM, tick);


 periodic_adjust();

 ticks += 1<<ADJINTERVAL;

 if ((ticks - last_sync) > MAX_UNSYNC)
 {



  if (sync_state == SYNC)
  {



   sync_state = NO_SYNC;
   syslog(LOG_INFO, "DCF77 reception lost (timeout)");
   last_notice = ticks;
  }
  else



      if ((ticks - last_notice) > NOTICE_INTERVAL)
      {
       syslog(LOG_NOTICE, "still not synchronized to DCF77 - check receiver/signal");
       last_notice = ticks;
      }
 }


 (void) alarm(1<<ADJINTERVAL);

}
