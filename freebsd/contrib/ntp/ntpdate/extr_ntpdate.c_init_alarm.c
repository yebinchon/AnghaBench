
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_4__ it_value; TYPE_3__ it_interval; } ;
struct TYPE_11__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct itimerspec {TYPE_2__ it_value; TYPE_1__ it_interval; } ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int wPeriodMax; int wPeriodMin; } ;
struct TYPE_15__ {int PrivilegeCount; TYPE_5__* Privileges; } ;
struct TYPE_14__ {int Attributes; int Luid; } ;
typedef TYPE_6__ TOKEN_PRIVILEGES ;
typedef TYPE_7__ TIMECAPS ;
typedef int PTOKEN_PRIVILEGES ;
typedef int LPTIMECALLBACK ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int AdjustTokenPrivileges (int ,int ,TYPE_6__*,int ,int ,int ) ;
 int CLOCK_REALTIME ;
 int ERROR ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int ITIMER_REAL ;
 int LOG_ERR ;
 int LookupPrivilegeValue (int *,int ,int *) ;
 int OpenProcessToken (int ,int,int *) ;
 int SE_PRIVILEGE_ENABLED ;
 int SE_SYSTEMTIME_NAME ;
 int SIGALRM ;
 int TARGET_RESOLUTION ;
 scalar_t__ TIMERR_NOERROR ;
 int TIMER_HZ ;
 int TIME_PERIODIC ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int TOKEN_QUERY ;
 int _tzset () ;
 scalar_t__ alarm_flag ;
 scalar_t__ alarming ;
 int atexit (int ) ;
 int callTimeEndPeriod ;
 int debug ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int msyslog (int ,char*) ;
 int ntpdate_timerid ;
 int setitimer (int ,struct itimerval*,int *) ;
 int signal_no_reset (int ,scalar_t__) ;
 int simple_query ;
 int stderr ;
 int timeBeginPeriod (int ) ;
 scalar_t__ timeGetDevCaps (TYPE_7__*,int) ;
 scalar_t__ timeSetEvent (scalar_t__,int ,int ,scalar_t__,int ) ;
 int timer_create (int ,int *,int *) ;
 int timer_settime (int ,int ,struct itimerspec*,int *) ;
 int wTimerRes ;

__attribute__((used)) static void
init_alarm(void)
{




 struct itimerval itv;
 alarm_flag = 0;
 signal_no_reset(SIGALRM, alarming);
 itv.it_interval.tv_sec = 0;
 itv.it_value.tv_sec = 0;
 itv.it_interval.tv_usec = 1000000/TIMER_HZ;
 itv.it_value.tv_usec = 1000000/(TIMER_HZ<<1);

 setitimer(ITIMER_REAL, &itv, ((void*)0));
}
