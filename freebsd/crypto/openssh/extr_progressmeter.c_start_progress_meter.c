
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* off_t ;


 int SIGALRM ;
 int SIGWINCH ;
 int UPDATE_INTERVAL ;
 int alarm (int ) ;
 scalar_t__ bytes_per_second ;
 scalar_t__ can_output () ;
 void** counter ;
 scalar_t__ cur_pos ;
 void* end_pos ;
 char const* file ;
 int last_update ;
 int monotime_double () ;
 int refresh_progress_meter () ;
 int setscreensize () ;
 int sig_winch ;
 int signal (int ,int ) ;
 scalar_t__ stalled ;
 int start ;
 void* start_pos ;
 int update_progress_meter ;

void
start_progress_meter(const char *f, off_t filesize, off_t *ctr)
{
 start = last_update = monotime_double();
 file = f;
 start_pos = *ctr;
 end_pos = filesize;
 cur_pos = 0;
 counter = ctr;
 stalled = 0;
 bytes_per_second = 0;

 setscreensize();
 if (can_output())
  refresh_progress_meter();

 signal(SIGALRM, update_progress_meter);
 signal(SIGWINCH, sig_winch);
 alarm(UPDATE_INTERVAL);
}
