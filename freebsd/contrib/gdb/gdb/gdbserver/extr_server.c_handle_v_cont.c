
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_resume {int thread; int leave_stopped; int step; scalar_t__ sig; } ;
typedef int resume_info ;
struct TYPE_2__ {int (* resume ) (struct thread_resume*) ;} ;


 int cont_thread ;
 int free (struct thread_resume*) ;
 struct thread_resume* malloc (int) ;
 unsigned char mywait (char*,int) ;
 int prepare_resume_reply (char*,char,unsigned char) ;
 int set_desired_inferior (int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 void* strtol (char*,char**,int) ;
 int stub1 (struct thread_resume*) ;
 scalar_t__ target_signal_to_host (int) ;
 int target_signal_to_host_p (int) ;
 TYPE_1__* the_target ;

void
handle_v_cont (char *own_buf, char *status, unsigned char *signal)
{
  char *p, *q;
  int n = 0, i = 0;
  struct thread_resume *resume_info, default_action;



  p = &own_buf[5];
  while (p)
    {
      n++;
      p++;
      p = strchr (p, ';');
    }



  resume_info = malloc ((n + 1) * sizeof (resume_info[0]));

  default_action.thread = -1;
  default_action.leave_stopped = 1;
  default_action.step = 0;
  default_action.sig = 0;

  p = &own_buf[5];
  i = 0;
  while (*p)
    {
      p++;

      resume_info[i].leave_stopped = 0;

      if (p[0] == 's' || p[0] == 'S')
 resume_info[i].step = 1;
      else if (p[0] == 'c' || p[0] == 'C')
 resume_info[i].step = 0;
      else
 goto err;

      if (p[0] == 'S' || p[0] == 'C')
 {
   int sig;
   sig = strtol (p + 1, &q, 16);
   if (p == q)
     goto err;
   p = q;

   if (!target_signal_to_host_p (sig))
     goto err;
   resume_info[i].sig = target_signal_to_host (sig);
 }
      else
 {
   resume_info[i].sig = 0;
   p = p + 1;
 }

      if (p[0] == 0)
 {
   resume_info[i].thread = -1;
   default_action = resume_info[i];



 }
      else if (p[0] == ':')
 {
   resume_info[i].thread = strtol (p + 1, &q, 16);
   if (p == q)
     goto err;
   p = q;
   if (p[0] != ';' && p[0] != 0)
     goto err;

   i++;
 }
    }

  resume_info[i] = default_action;


  if (n == 1 && resume_info[0].thread != -1)
    cont_thread = resume_info[0].thread;
  else
    cont_thread = -1;
  set_desired_inferior (0);

  (*the_target->resume) (resume_info);

  free (resume_info);

  *signal = mywait (status, 1);
  prepare_resume_reply (own_buf, *status, *signal);
  return;

err:

  strcpy (own_buf, "");
  free (resume_info);
  return;
}
