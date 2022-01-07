
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int fd; struct pipe_state* state; } ;
struct pipe_state {int pid; } ;


 int SIGTERM ;
 int close (int) ;
 int kill (int,int ) ;
 int xfree (struct pipe_state*) ;

__attribute__((used)) static void
pipe_close (struct serial *scb)
{
  struct pipe_state *state = scb->state;
  if (state != ((void*)0))
    {
      int pid = state->pid;
      close (scb->fd);
      scb->fd = -1;
      xfree (state);
      scb->state = ((void*)0);
      kill (pid, SIGTERM);

    }
}
