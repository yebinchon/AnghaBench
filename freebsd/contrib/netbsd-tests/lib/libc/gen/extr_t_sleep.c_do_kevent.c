
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct kevent {int dummy; } ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 int BILLION ;
 int EINTR ;
 int EVFILT_TIMER ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int,int ) ;
 int KEVNT_TIMEOUT ;
 int MAXSLEEP ;
 int MILLION ;
 int close (int) ;
 int errno ;
 scalar_t__ isQEMU () ;
 int kevent (int,struct kevent*,int,struct kevent*,int,struct timespec*) ;
 int kqueue () ;
 int strerror (int) ;

int
do_kevent(struct timespec *delay, struct timespec *remain)
{
 struct kevent ktimer;
 struct kevent kresult;
 int rtc, kq, kerrno;
 int tmo;

 ATF_REQUIRE_MSG((kq = kqueue()) != -1, "kqueue: %s", strerror(errno));

 tmo = KEVNT_TIMEOUT;






 if (isQEMU() &&
     tmo/1000 < delay->tv_sec && tmo/500 > delay->tv_sec)
  delay->tv_sec = MAXSLEEP;

 EV_SET(&ktimer, 1, EVFILT_TIMER, EV_ADD, 0, tmo, 0);

 rtc = kevent(kq, &ktimer, 1, &kresult, 1, delay);
 kerrno = errno;

 (void)close(kq);

 if (rtc == -1) {
  ATF_REQUIRE_MSG(kerrno == EINTR, "kevent: %s",
      strerror(kerrno));
  return 0;
 }

 if (delay->tv_sec * BILLION + delay->tv_nsec > tmo * MILLION)
  ATF_REQUIRE_MSG(rtc > 0,
      "kevent: KEVNT_TIMEOUT did not cause EVFILT_TIMER event");

 return 0;
}
