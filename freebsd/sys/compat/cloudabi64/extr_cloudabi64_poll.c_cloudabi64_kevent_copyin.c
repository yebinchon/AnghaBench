
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sub ;
struct kevent {int flags; int fflags; int ident; int filter; scalar_t__ data; int udata; } ;
struct cloudabi64_kevent_args {int in; } ;
typedef scalar_t__ cloudabi_timestamp_t ;
struct TYPE_8__ {int fd; } ;
struct TYPE_7__ {int fd; } ;
struct TYPE_6__ {int flags; scalar_t__ timeout; int clock_id; int identifier; } ;
struct TYPE_9__ {int type; TYPE_3__ proc_terminate; TYPE_2__ fd_readwrite; TYPE_1__ clock; int userdata; } ;
typedef TYPE_4__ cloudabi64_subscription_t ;






 int CLOUDABI_SUBSCRIPTION_CLOCK_ABSTIME ;
 int EVFILT_PROCDESC ;
 int EVFILT_READ ;
 int EVFILT_TIMER ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_ONESHOT ;
 scalar_t__ INTPTR_MAX ;
 int NOTE_EXIT ;
 int NOTE_FILE_POLL ;
 int NOTE_NSECONDS ;
 int TO_PTR (int ) ;
 int cloudabi_clock_time_get (int ,int ,scalar_t__*) ;
 int copyin (int ,TYPE_4__*,int) ;
 int curthread ;
 int memset (struct kevent*,int ,int) ;

__attribute__((used)) static int
cloudabi64_kevent_copyin(void *arg, struct kevent *kevp, int count)
{
 cloudabi64_subscription_t sub;
 struct cloudabi64_kevent_args *args;
 cloudabi_timestamp_t ts;
 int error;

 args = arg;
 while (count-- > 0) {

  error = copyin(args->in++, &sub, sizeof(sub));
  if (error != 0)
   return (error);

  memset(kevp, 0, sizeof(*kevp));
  kevp->udata = TO_PTR(sub.userdata);
  switch (sub.type) {
  case 131:
   kevp->filter = EVFILT_TIMER;
   kevp->ident = sub.clock.identifier;
   kevp->fflags = NOTE_NSECONDS;
   if ((sub.clock.flags &
       CLOUDABI_SUBSCRIPTION_CLOCK_ABSTIME) != 0 &&
       sub.clock.timeout > 0) {

    error = cloudabi_clock_time_get(curthread,
        sub.clock.clock_id, &ts);
    if (error != 0)
     return (error);
    ts = ts > sub.clock.timeout ? 0 :
        sub.clock.timeout - ts;
   } else {

    ts = sub.clock.timeout;
   }
   kevp->data = ts > INTPTR_MAX ? INTPTR_MAX : ts;
   break;
  case 130:
   kevp->filter = EVFILT_READ;
   kevp->ident = sub.fd_readwrite.fd;
   kevp->fflags = NOTE_FILE_POLL;
   break;
  case 129:
   kevp->filter = EVFILT_WRITE;
   kevp->ident = sub.fd_readwrite.fd;
   break;
  case 128:
   kevp->filter = EVFILT_PROCDESC;
   kevp->ident = sub.proc_terminate.fd;
   kevp->fflags = NOTE_EXIT;
   break;
  }
  kevp->flags = EV_ADD | EV_ONESHOT;
  ++kevp;
 }
 return (0);
}
