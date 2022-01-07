
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int UPDATE_INTERVAL ;
 int alarm (int ) ;
 scalar_t__ can_output () ;
 int errno ;
 int refresh_progress_meter () ;
 int setscreensize () ;
 int signal (int ,void (*) (int)) ;
 scalar_t__ win_resized ;

__attribute__((used)) static void
update_progress_meter(int ignore)
{
 int save_errno;

 save_errno = errno;

 if (win_resized) {
  setscreensize();
  win_resized = 0;
 }
 if (can_output())
  refresh_progress_meter();

 signal(SIGALRM, update_progress_meter);
 alarm(UPDATE_INTERVAL);
 errno = save_errno;
}
