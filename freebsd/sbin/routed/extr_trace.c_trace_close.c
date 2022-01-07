
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int O_RDWR ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_DEVNULL ;
 int close (int) ;
 int dup2 (int,int ) ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * ftrace ;
 scalar_t__ isatty (int ) ;
 TYPE_1__ lastlog_time ;
 int open (int ,int ) ;
 int * stderr ;
 int * stdout ;

void
trace_close(int zap_stdio)
{
 int fd;


 fflush(stdout);
 fflush(stderr);

 if (ftrace != ((void*)0) && zap_stdio) {
  if (ftrace != stdout)
   fclose(ftrace);
  ftrace = ((void*)0);
  fd = open(_PATH_DEVNULL, O_RDWR);
  if (fd < 0)
   return;
  if (isatty(STDIN_FILENO))
   (void)dup2(fd, STDIN_FILENO);
  if (isatty(STDOUT_FILENO))
   (void)dup2(fd, STDOUT_FILENO);
  if (isatty(STDERR_FILENO))
   (void)dup2(fd, STDERR_FILENO);
  (void)close(fd);
 }
 lastlog_time.tv_sec = 0;
}
