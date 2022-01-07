
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum return_reason { ____Placeholder_return_reason } return_reason ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int GDB_RC_FAIL ;
 int MI_CMD_CAUGHT_ERROR ;
 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int RETURN_ERROR ;
 int gdb_thread_select (int ,char*) ;
 int mi_error_message ;
 int uiout ;
 int xasprintf (int *,char*) ;

enum mi_cmd_result
mi_cmd_thread_select (char *command, char **argv, int argc)
{
  enum gdb_rc rc;

  if (argc != 1)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_thread_select: USAGE: threadnum.");
      return MI_CMD_ERROR;
    }
  else
    rc = gdb_thread_select (uiout, argv[0]);



  if ((int) rc < 0 && (enum return_reason) rc == RETURN_ERROR)
    return MI_CMD_CAUGHT_ERROR;
  else if ((int) rc >= 0 && rc == GDB_RC_FAIL)
    return MI_CMD_ERROR;
  else
    return MI_CMD_DONE;
}
