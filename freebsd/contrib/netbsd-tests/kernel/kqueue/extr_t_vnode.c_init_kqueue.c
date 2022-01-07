
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;


 int EVFILT_VNODE ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,uintptr_t,int ,int,int,int ,int ) ;
 int NOTE_ATTRIB ;
 int NOTE_DELETE ;
 int NOTE_EXTEND ;
 int NOTE_LINK ;
 int NOTE_RENAME ;
 int NOTE_REVOKE ;
 int NOTE_WRITE ;
 int kevent (scalar_t__,struct kevent*,int,int *,int ,int *) ;
 scalar_t__ kq ;
 scalar_t__ kqueue () ;
 scalar_t__ target ;

int
init_kqueue(void)
{
 struct kevent eventlist[1];

 kq = kqueue();
 if (kq < 0) {
  return -1;
 }
 EV_SET(&eventlist[0], (uintptr_t)target, EVFILT_VNODE,
  EV_ADD | EV_ONESHOT, NOTE_DELETE |
  NOTE_WRITE | NOTE_EXTEND | NOTE_ATTRIB |
  NOTE_LINK | NOTE_RENAME | NOTE_REVOKE, 0, 0);
 return kevent(kq, eventlist, 1, ((void*)0), 0, ((void*)0));
}
