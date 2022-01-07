
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xxfi_name; } ;


 int MI_FAILURE ;
 int MI_MONITOR_INIT () ;
 scalar_t__ MI_SUCCESS ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SMI_LOG_FATAL ;
 int atexit (int ) ;
 int backlog ;
 int * conn ;
 int dbg ;
 int mi_clean_signals ;
 scalar_t__ mi_control_startup (int ) ;
 scalar_t__ mi_listener (int *,int ,TYPE_1__*,int ,int ) ;
 int signal (int ,int ) ;
 TYPE_1__* smfi ;
 int smi_log (int ,char*,int ) ;
 int timeout ;

int
smfi_main()
{
 int r;

 (void) signal(SIGPIPE, SIG_IGN);
 if (conn == ((void*)0))
 {
  smi_log(SMI_LOG_FATAL, "%s: missing connection information",
   smfi->xxfi_name);
  return MI_FAILURE;
 }

 (void) atexit(mi_clean_signals);
 if (mi_control_startup(smfi->xxfi_name) != MI_SUCCESS)
 {
  smi_log(SMI_LOG_FATAL,
   "%s: Couldn't start signal thread",
   smfi->xxfi_name);
  return MI_FAILURE;
 }
 r = MI_MONITOR_INIT();


 if (mi_listener(conn, dbg, smfi, timeout, backlog) != MI_SUCCESS)
  r = MI_FAILURE;

 return r;
}
