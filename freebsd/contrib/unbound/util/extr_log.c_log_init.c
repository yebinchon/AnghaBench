
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_DAEMON ;
 int LOG_NDELAY ;
 int VERB_QUERY ;
 scalar_t__ _IOLBF ;
 int closelog () ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int ident ;
 int key_created ;
 int lock_quick_init (int *) ;
 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int log_err (char*,char const*,int ) ;
 int log_lock ;
 int * logfile ;
 int logging_to_syslog ;
 int logkey ;
 int openlog (int ,int ,int ) ;
 int setvbuf (int *,int *,int,int ) ;
 int * stderr ;
 int strerror (int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;
 int ub_thread_key_create (int *,int *) ;
 int verbose (int ,char*,char*) ;

void
log_init(const char* filename, int use_syslog, const char* chrootdir)
{
 FILE *f;
 if(!key_created) {
  key_created = 1;
  ub_thread_key_create(&logkey, ((void*)0));
  lock_quick_init(&log_lock);
 }
 lock_quick_lock(&log_lock);
 if(logfile



 ) {
  lock_quick_unlock(&log_lock);
  verbose(VERB_QUERY, "switching log to %s",
   use_syslog?"syslog":(filename&&filename[0]?filename:"stderr"));
  lock_quick_lock(&log_lock);
 }
 if(logfile && logfile != stderr) {
  FILE* cl = logfile;
  logfile = ((void*)0);

  fclose(cl);
 }
 if(!filename || !filename[0]) {
  logfile = stderr;
  lock_quick_unlock(&log_lock);
  return;
 }

 if(chrootdir && chrootdir[0] && strncmp(filename, chrootdir,
  strlen(chrootdir)) == 0)
  filename += strlen(chrootdir);
 f = fopen(filename, "a");
 if(!f) {
  lock_quick_unlock(&log_lock);
  log_err("Could not open logfile %s: %s", filename,
   strerror(errno));
  return;
 }


 setvbuf(f, ((void*)0), (int)_IOLBF, 0);

 logfile = f;
 lock_quick_unlock(&log_lock);
}
