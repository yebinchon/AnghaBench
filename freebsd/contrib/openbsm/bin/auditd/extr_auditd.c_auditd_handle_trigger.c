
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timezone {int dummy; } ;
struct timeval {scalar_t__ tv_sec; } ;
 int AUD_STATE_DISABLED ;
 int AUD_STATE_ENABLED ;
 int DUPLICATE_INTERVAL ;
 int audit_setup () ;
 int audit_warn_expired ;
 int auditd_config_controls () ;
 int auditd_expire_trails (int ) ;
 int auditd_get_state () ;
 int auditd_log_err (char*,...) ;
 int auditd_log_info (char*,...) ;
 int auditd_log_notice (char*) ;
 int auditd_strerror (int) ;
 int close_all () ;
 int do_trail_file () ;
 int exit (int) ;
 scalar_t__ gettimeofday (struct timeval*,struct timezone*) ;
 int launchd_flag ;

void
auditd_handle_trigger(int trigger)
{
 static int last_trigger, last_warning;
 static time_t last_time;
 struct timeval ts;
 struct timezone tzp;
 time_t tt;
 int au_state;
 int err = 0;





 if (gettimeofday(&ts, &tzp) == 0) {
  tt = (time_t)ts.tv_sec;
  switch (trigger) {
  case 132:
  case 131:





   if ((trigger == last_trigger) &&
       (tt < (last_time + DUPLICATE_INTERVAL))) {
    if (tt >= (last_warning + DUPLICATE_INTERVAL))
     auditd_log_info(
         "Suppressing duplicate trigger %d",
         trigger);
    return;
   }
   last_warning = tt;
   break;

  case 129:
  case 128:
  case 130:
  case 135:
  case 133:



   break;
  }






  last_trigger = trigger;
  last_time = tt;
 }

 au_state = auditd_get_state();




 switch(trigger) {
 case 132:
  auditd_log_notice("Got low space trigger");
  if (do_trail_file() == -1)
   auditd_log_err("Error swapping audit file");
  break;

 case 131:
  auditd_log_notice("Got no space trigger");
  if (do_trail_file() == -1)
   auditd_log_err("Error swapping audit file");
  break;

 case 129:
 case 128:
  auditd_log_info("Got open new trigger from %s", trigger ==
      129 ? "kernel" : "user");
  if (au_state == AUD_STATE_ENABLED && do_trail_file() == -1)
   auditd_log_err("Error swapping audit file");
  break;

 case 130:
  auditd_log_info("Got read file trigger");
  if (au_state == AUD_STATE_ENABLED) {
   if (auditd_config_controls() == -1)
    auditd_log_err("Error setting audit controls");
   else if (do_trail_file() == -1)
    auditd_log_err("Error swapping audit file");
  }
  break;

 case 135:
  auditd_log_info("Got close and die trigger");
  if (au_state == AUD_STATE_ENABLED)
   err = close_all();




  if (!launchd_flag) {
   auditd_log_info("auditd exiting.");
   exit (err);
  }
  break;

 case 133:
  auditd_log_info("Got audit initialize trigger");
  if (au_state == AUD_STATE_DISABLED)
   audit_setup();
  break;

 case 134:
  auditd_log_info("Got audit expire trails trigger");
  err = auditd_expire_trails(audit_warn_expired);
  if (err)
   auditd_log_err("auditd_expire_trails(): %s",
       auditd_strerror(err));
  break;

 default:
  auditd_log_err("Got unknown trigger %d", trigger);
  break;
 }
}
