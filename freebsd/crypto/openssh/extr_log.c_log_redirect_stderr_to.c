
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int log_stderr_fd ;
 int open (char const*,int,int) ;
 int stderr ;
 char* strerror (int ) ;

void
log_redirect_stderr_to(const char *logfile)
{
 int fd;

 if ((fd = open(logfile, O_WRONLY|O_CREAT|O_APPEND, 0600)) == -1) {
  fprintf(stderr, "Couldn't open logfile %s: %s\n", logfile,
       strerror(errno));
  exit(1);
 }
 log_stderr_fd = fd;
}
