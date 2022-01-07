
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int GDB_RC_FAIL ;
 int MI_CMD_CAUGHT_ERROR ;
 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int gdb_list_thread_ids (int ) ;
 int mi_error_message ;
 int uiout ;
 int xasprintf (int *,char*) ;

enum mi_cmd_result
mi_cmd_thread_list_ids (char *command, char **argv, int argc)
{
  enum gdb_rc rc = MI_CMD_DONE;

  if (argc != 0)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_thread_list_ids: No arguments required.");
      return MI_CMD_ERROR;
    }
  else
    rc = gdb_list_thread_ids (uiout);

  if (rc == GDB_RC_FAIL)
    return MI_CMD_CAUGHT_ERROR;
  else
    return MI_CMD_DONE;
}
