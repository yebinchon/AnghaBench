
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdog_mode {int wc_count; char* wc_names; int wm_period; int wm_mode; int wm_name; } ;
struct wdog_conf {int wc_count; char* wc_names; int wm_period; int wm_mode; int wm_name; } ;
typedef int pid_t ;


 int ATF_REQUIRE_EQ (int,int) ;
 int O_RDWR ;
 int SIGUSR1 ;
 int WDOGIOC_GWDOGS ;
 int WDOGIOC_SMODE ;
 int WDOGIOC_TICKLE ;
 int WDOG_MODE_DISARMED ;
 int WDOG_MODE_ETICKLE ;
 int WDOG_NAMESIZE ;
 int _exit (int) ;
 int assert (int) ;
 int atf_tc_fail_errno (char*) ;
 int err (int,char*) ;
 int fork () ;
 int getppid () ;
 int kill (int ,int ) ;
 int printf (char*) ;
 int rump_init () ;
 int rump_sys_ioctl (int,int ,...) ;
 int rump_sys_open (char*,int ) ;
 int sigcount ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int strlcpy (int ,char*,int) ;
 int tcount ;
 int usleep (int) ;
 int wait (int*) ;

__attribute__((used)) static int
testbody(int max)
{
 char wname[WDOG_NAMESIZE];
 struct wdog_conf wc;
 struct wdog_mode wm;
 pid_t p1, p2;
 int status;
 int fd;

 signal(SIGUSR1, sigcount);

 switch ((p1 = fork())) {
 case 0:
  break;
 case -1:
  atf_tc_fail_errno("fork");
  break;
 default:
  p2 = wait(&status);
  ATF_REQUIRE_EQ(p1, p2);
  ATF_REQUIRE_EQ(tcount, max);
  return status;
 }

 rump_init();

 fd = rump_sys_open("/dev/watchdog", O_RDWR);
 if (fd == -1)
  err(1, "open watchdog");

 wc.wc_count = 1;
 wc.wc_names = wname;

 if (rump_sys_ioctl(fd, WDOGIOC_GWDOGS, &wc) == -1)
  err(1, "can't fetch watchdog names");

 if (wc.wc_count) {
  assert(wc.wc_count == 1);

  strlcpy(wm.wm_name, wc.wc_names, sizeof(wm.wm_name));
  wm.wm_mode = WDOG_MODE_ETICKLE;
  wm.wm_period = 1;
  if (rump_sys_ioctl(fd, WDOGIOC_SMODE, &wm) == -1)
   atf_tc_fail_errno("failed to set tickle");

  usleep(400000);
  if (max == 1)
   rump_sys_ioctl(fd, WDOGIOC_TICKLE);
  else {
   wm.wm_mode = WDOG_MODE_DISARMED;
   rump_sys_ioctl(fd, WDOGIOC_SMODE, &wm);
  }
  kill(getppid(), SIGUSR1);

  sleep(2);
  printf("staying alive\n");
  kill(getppid(), SIGUSR1);
  _exit(2);
 }

 printf("no watchdog registered!\n");
 _exit(1);
}
