
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct process_info {int sigstop_sent; TYPE_1__ head; scalar_t__ stop_expected; scalar_t__ stopped; } ;
struct inferior_list_entry {int dummy; } ;


 int SIGSTOP ;
 scalar_t__ debug_threads ;
 int fprintf (int ,char*,int) ;
 int kill (int,int ) ;
 int stderr ;

__attribute__((used)) static void
send_sigstop (struct inferior_list_entry *entry)
{
  struct process_info *process = (struct process_info *) entry;

  if (process->stopped)
    return;



  if (process->stop_expected)
    {
      process->stop_expected = 0;
      return;
    }

  if (debug_threads)
    fprintf (stderr, "Sending sigstop to process %d\n", process->head.id);

  kill (process->head.id, SIGSTOP);
  process->sigstop_sent = 1;
}
