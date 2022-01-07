
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DIR_SEP ;
 int FALSE ;
 int LOG_ERR ;
 int TRUE ;
 scalar_t__ debug ;
 int fflush (int *) ;
 int fprintf (int *,char*,char const*,...) ;
 int getpid () ;
 char* humanlogtime () ;
 scalar_t__ msyslog_include_timestamp ;
 int msyslog_term ;
 scalar_t__ msyslog_term_pid ;
 char const* progname ;
 int * stderr ;
 int * stdout ;
 int strlen (char const*) ;
 char* strrchr (char const*,int ) ;
 int syslog (int,char*,char const*) ;
 int * syslog_file ;
 scalar_t__ syslogit ;

void
addto_syslog(
 int level,
 const char * msg
 )
{
 static char const * prevcall_progname;
 static char const * prog;
 const char nl[] = "\n";
 const char empty[] = "";
 FILE * term_file;
 int log_to_term;
 int log_to_file;
 int pid;
 const char * nl_or_empty;
 const char * human_time;


 if (progname != prevcall_progname) {
  prevcall_progname = progname;
  prog = strrchr(progname, DIR_SEP);
  if (prog != ((void*)0))
   prog++;
  else
   prog = progname;
 }

 log_to_term = msyslog_term;
 log_to_file = FALSE;

 if (syslogit)
  syslog(level, "%s", msg);
 else

  if (syslog_file != ((void*)0))
   log_to_file = TRUE;
  else
   log_to_term = TRUE;




 if (!(log_to_file || log_to_term))
  return;


 if (msyslog_include_timestamp)
  human_time = humanlogtime();
 else
  human_time = ((void*)0);
 if (msyslog_term_pid || log_to_file)
  pid = getpid();
 else
  pid = -1;


 if ('\n' != msg[strlen(msg) - 1])
  nl_or_empty = nl;
 else
  nl_or_empty = empty;

 if (log_to_term) {
  term_file = (level <= LOG_ERR)
    ? stderr
    : stdout;
  if (msyslog_include_timestamp)
   fprintf(term_file, "%s ", human_time);
  if (msyslog_term_pid)
   fprintf(term_file, "%s[%d]: ", prog, pid);
  fprintf(term_file, "%s%s", msg, nl_or_empty);
  fflush(term_file);
 }

 if (log_to_file) {
  if (msyslog_include_timestamp)
   fprintf(syslog_file, "%s ", human_time);
  fprintf(syslog_file, "%s[%d]: %s%s", prog, pid, msg,
   nl_or_empty);
  fflush(syslog_file);
 }
}
