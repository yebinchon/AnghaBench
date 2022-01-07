
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 size_t ARRAY_SIZE (int const*) ;






 scalar_t__ SIG_IGN ;
 int hooked_signals ;
 int const* message_progress_sigs ;
 int message_signal_handler () ;
 scalar_t__ sigaction (int const,struct sigaction*,struct sigaction*) ;
 int sigaddset (int *,int const) ;
 int sigemptyset (int *) ;
 int signal_handler ;
 int signals_are_initialized ;

extern void
signals_init(void)
{

 static const int sigs[] = {
  132,
  130,

  133,


  131,


  129,


  128,

 };


 sigemptyset(&hooked_signals);
 for (size_t i = 0; i < ARRAY_SIZE(sigs); ++i)
  sigaddset(&hooked_signals, sigs[i]);
 struct sigaction my_sa;



 my_sa.sa_mask = hooked_signals;




 my_sa.sa_flags = 0;
 my_sa.sa_handler = &signal_handler;

 for (size_t i = 0; i < ARRAY_SIZE(sigs); ++i) {


  struct sigaction old;
  if (sigaction(sigs[i], ((void*)0), &old) == 0
    && old.sa_handler == SIG_IGN)
   continue;


  if (sigaction(sigs[i], &my_sa, ((void*)0)))
   message_signal_handler();
 }

 signals_are_initialized = 1;

 return;
}
