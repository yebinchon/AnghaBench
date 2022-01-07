
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int dummy; } ;


 int SIGHUP ;
 int SIGTERM ;
 scalar_t__ sig_record_quit ;
 scalar_t__ sig_record_reload ;
 int worker_sighandler (int ,struct worker*) ;

__attribute__((used)) static void
signal_handling_playback(struct worker* wrk)
{




 if(sig_record_quit)
  worker_sighandler(SIGTERM, wrk);
 sig_record_quit = 0;
 sig_record_reload = 0;
}
