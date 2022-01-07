
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int * sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int STDERR_FILENO ;
 int isatty (int ) ;
 scalar_t__* message_progress_sigs ;
 int message_signal_handler () ;
 int progress_automatic ;
 int progress_signal_handler ;
 scalar_t__ sigaction (scalar_t__,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

extern void
message_init(void)
{






 progress_automatic = isatty(STDERR_FILENO);
 return;
}
