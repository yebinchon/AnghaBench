
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGBREAK ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int errno ;
 int log_err (char*,int ) ;
 int record_sigh ;
 scalar_t__ signal (int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
signal_handling_record(void)
{
 if( signal(SIGTERM, record_sigh) == SIG_ERR ||
  signal(SIGINT, record_sigh) == SIG_ERR
  )
  log_err("install sighandler: %s", strerror(errno));
}
