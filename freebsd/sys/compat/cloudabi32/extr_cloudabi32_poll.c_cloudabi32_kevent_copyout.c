
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kevent {int filter; int flags; int data; scalar_t__ udata; } ;
struct cloudabi32_kevent_args {int out; } ;
typedef int ev ;
struct TYPE_7__ {int exitcode; int signal; } ;
struct TYPE_6__ {int flags; int nbytes; } ;
struct TYPE_8__ {uintptr_t userdata; int error; TYPE_2__ proc_terminate; TYPE_1__ fd_readwrite; int type; } ;
typedef TYPE_3__ cloudabi_event_t ;


 int CLOUDABI_EVENTTYPE_CLOCK ;
 int CLOUDABI_EVENTTYPE_FD_READ ;
 int CLOUDABI_EVENTTYPE_FD_WRITE ;
 int CLOUDABI_EVENTTYPE_PROC_TERMINATE ;
 int CLOUDABI_EVENT_FD_READWRITE_HANGUP ;




 int EV_EOF ;
 int EV_ERROR ;
 int WEXITSTATUS (int ) ;
 int WIFSIGNALED (int ) ;
 int WTERMSIG (int ) ;
 int cloudabi_convert_errno (int ) ;
 int convert_signal (int ) ;
 int copyout (TYPE_3__*,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
cloudabi32_kevent_copyout(void *arg, struct kevent *kevp, int count)
{
 cloudabi_event_t ev;
 struct cloudabi32_kevent_args *args;
 int error;

 args = arg;
 while (count-- > 0) {

  memset(&ev, 0, sizeof(ev));
  ev.userdata = (uintptr_t)kevp->udata;
  switch (kevp->filter) {
  case 129:
   ev.type = CLOUDABI_EVENTTYPE_CLOCK;
   break;
  case 130:
   ev.type = CLOUDABI_EVENTTYPE_FD_READ;
   break;
  case 128:
   ev.type = CLOUDABI_EVENTTYPE_FD_WRITE;
   break;
  case 131:
   ev.type = CLOUDABI_EVENTTYPE_PROC_TERMINATE;
   break;
  }

  if ((kevp->flags & EV_ERROR) == 0) {

   switch (kevp->filter) {
   case 130:
   case 128:
    ev.fd_readwrite.nbytes = kevp->data;
    if ((kevp->flags & EV_EOF) != 0) {
     ev.fd_readwrite.flags |=
         CLOUDABI_EVENT_FD_READWRITE_HANGUP;
    }
    break;
   case 131:
    if (WIFSIGNALED(kevp->data)) {

     ev.proc_terminate.signal =
        convert_signal(WTERMSIG(kevp->data));
     ev.proc_terminate.exitcode = 0;
    } else {

     ev.proc_terminate.signal = 0;
     ev.proc_terminate.exitcode =
         WEXITSTATUS(kevp->data);
    }
    break;
   }
  } else {

   ev.error = cloudabi_convert_errno(kevp->data);
  }
  ++kevp;


  error = copyout(&ev, args->out++, sizeof(ev));
  if (error != 0)
   return (error);
 }
 return (0);
}
