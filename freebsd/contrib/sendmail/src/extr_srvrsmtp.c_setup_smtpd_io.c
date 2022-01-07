
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int InChannel ;
 int LOG_INFO ;
 int LogLevel ;
 int NOQID ;
 int O_NONBLOCK ;
 int OutChannel ;
 int SM_IO_WHAT_FD ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ bitset (int,int) ;
 int dup2 (int,int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 scalar_t__ isatty (int) ;
 int sm_errstring (int ) ;
 int sm_io_automode (int ,int ) ;
 int sm_io_getinfo (int ,int ,int *) ;
 int sm_syslog (int ,int ,char*,int,...) ;
 int smioout ;
 scalar_t__ tTd (int,int) ;

__attribute__((used)) static void
setup_smtpd_io()
{
 int inchfd, outchfd, outfd;

 inchfd = sm_io_getinfo(InChannel, SM_IO_WHAT_FD, ((void*)0));
 outchfd = sm_io_getinfo(OutChannel, SM_IO_WHAT_FD, ((void*)0));
 outfd = sm_io_getinfo(smioout, SM_IO_WHAT_FD, ((void*)0));
 if (outchfd != outfd)
 {

  (void) dup2(outchfd, outfd);
 }
 if (inchfd == STDIN_FILENO && outchfd == STDOUT_FILENO &&
     isatty(inchfd) && isatty(outchfd))
 {
  int inmode, outmode;

  inmode = fcntl(inchfd, F_GETFL, 0);
  if (inmode == -1)
  {
   if (LogLevel > 11)
    sm_syslog(LOG_INFO, NOQID,
     "fcntl(inchfd, F_GETFL) failed: %s",
     sm_errstring(errno));
   return;
  }
  outmode = fcntl(outchfd, F_GETFL, 0);
  if (outmode == -1)
  {
   if (LogLevel > 11)
    sm_syslog(LOG_INFO, NOQID,
     "fcntl(outchfd, F_GETFL) failed: %s",
     sm_errstring(errno));
   return;
  }
  if (bitset(O_NONBLOCK, inmode) ||
      bitset(O_NONBLOCK, outmode) ||
      fcntl(inchfd, F_SETFL, inmode | O_NONBLOCK) == -1)
   return;
  outmode = fcntl(outchfd, F_GETFL, 0);
  if (outmode != -1 && bitset(O_NONBLOCK, outmode))
  {

   sm_io_automode(OutChannel, InChannel);
   if (tTd(97, 4) && LogLevel > 9)
    sm_syslog(LOG_INFO, NOQID,
       "set automode for I (%d)/O (%d) in SMTP server",
       inchfd, outchfd);
  }


  (void) fcntl(inchfd, F_SETFL, inmode);
 }
}
