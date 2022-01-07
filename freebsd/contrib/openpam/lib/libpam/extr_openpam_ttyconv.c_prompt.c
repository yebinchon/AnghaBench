
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int close (int) ;
 int fflush (int ) ;
 int fpurge (int ) ;
 scalar_t__ isatty (int) ;
 int open (char*,int ) ;
 int prompt_notty (char const*,char*) ;
 int prompt_tty (int,int,char const*,char*,int) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int
prompt(const char *message, char *response, int echo)
{
 int ifd, ofd, ret;

 if (isatty(STDIN_FILENO)) {
  fflush(stdout);



  ifd = STDIN_FILENO;
  ofd = STDOUT_FILENO;
 } else {
  if ((ifd = open("/dev/tty", O_RDWR)) < 0)

   return (prompt_notty(message, response));
  ofd = ifd;
 }
 ret = prompt_tty(ifd, ofd, message, response, echo);
 if (ifd != STDIN_FILENO)
  close(ifd);
 return (ret);
}
