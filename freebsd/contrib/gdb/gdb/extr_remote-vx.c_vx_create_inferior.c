
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int taskStart ;
typedef int passArgs ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_6__ {scalar_t__ arg_array_len; int * arg_array_val; } ;
typedef TYPE_1__ arg_array ;
struct TYPE_7__ {int status; int pid; } ;
typedef TYPE_2__ TASK_START ;


 int NO_STOP_QUIETLY ;
 int PROCESS_START ;
 int RPC_SUCCESS ;
 int STOP_QUIETLY ;
 int TARGET_SIGNAL_DEFAULT ;
 int error (char*) ;
 int inferior_ptid ;
 int init_wait_for_inferior () ;
 int memset (char*,char,int) ;
 int net_clnt_call (int ,int ,TYPE_1__*,int ,TYPE_2__*) ;
 int parse_args (char*,TYPE_1__*) ;
 int pid_to_ptid (int ) ;
 int proceed (int,int ,int ) ;
 int push_target (int *) ;
 int savestring (int ,int ) ;
 int stop_soon ;
 int strlen (int ) ;
 int target_terminal_inferior () ;
 int target_terminal_init () ;
 int vx_run_ops ;
 int vx_running ;
 int wait_for_inferior () ;
 int xdr_TASK_START ;
 int xdr_arg_array ;

__attribute__((used)) static void
vx_create_inferior (char *exec_file, char *args, char **env)
{
  enum clnt_stat status;
  arg_array passArgs;
  TASK_START taskStart;

  memset ((char *) &passArgs, '\0', sizeof (passArgs));
  memset ((char *) &taskStart, '\0', sizeof (taskStart));



  parse_args (args, &passArgs);

  if (passArgs.arg_array_len == 0)
    error ("You must specify a function name to run, and arguments if any");

  status = net_clnt_call (PROCESS_START, xdr_arg_array, &passArgs,
     xdr_TASK_START, &taskStart);

  if ((status != RPC_SUCCESS) || (taskStart.status == -1))
    error ("Can't create process on remote target machine");


  vx_running = savestring (passArgs.arg_array_val[0],
      strlen (passArgs.arg_array_val[0]));

  push_target (&vx_run_ops);
  inferior_ptid = pid_to_ptid (taskStart.pid);




  init_wait_for_inferior ();



  target_terminal_init ();


  target_terminal_inferior ();

  stop_soon = STOP_QUIETLY;
  wait_for_inferior ();
  stop_soon = NO_STOP_QUIETLY;


  proceed (-1, TARGET_SIGNAL_DEFAULT, 0);
}
