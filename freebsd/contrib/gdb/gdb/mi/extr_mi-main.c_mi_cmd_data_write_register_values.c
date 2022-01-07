
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
typedef int LONGEST ;


 int DEPRECATED_REGISTER_BYTE (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int DEPRECATED_REGISTER_SIZE ;
 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int atoi (char*) ;
 int deprecated_write_register_bytes (int ,void*,int ) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,void*) ;
 int mi_error_message ;
 int parse_and_eval_address (char*) ;
 int store_signed_integer (void*,int ,int ) ;
 int target_has_registers ;
 int xasprintf (int *,char*) ;
 int xfree ;
 void* xmalloc (int ) ;

enum mi_cmd_result
mi_cmd_data_write_register_values (char *command, char **argv, int argc)
{
  int regnum;
  int i;
  int numregs;
  LONGEST value;
  char format;







  numregs = NUM_REGS;

  if (argc == 0)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_write_register_values: Usage: -data-write-register-values <format> [<regnum1> <value1>...<regnumN> <valueN>]");
      return MI_CMD_ERROR;
    }

  format = (int) argv[0][0];

  if (!target_has_registers)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_write_register_values: No registers.");
      return MI_CMD_ERROR;
    }

  if (!(argc - 1))
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_write_register_values: No regs and values specified.");
      return MI_CMD_ERROR;
    }

  if ((argc - 1) % 2)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_write_register_values: Regs and vals are not in pairs.");
      return MI_CMD_ERROR;
    }

  for (i = 1; i < argc; i = i + 2)
    {
      regnum = atoi (argv[i]);

      if (regnum >= 0
   && regnum < numregs
   && REGISTER_NAME (regnum) != ((void*)0)
   && *REGISTER_NAME (regnum) != '\000')
 {
   void *buffer;
   struct cleanup *old_chain;


   value = parse_and_eval_address (argv[i + 1]);

   buffer = xmalloc (DEPRECATED_REGISTER_SIZE);
   old_chain = make_cleanup (xfree, buffer);
   store_signed_integer (buffer, DEPRECATED_REGISTER_SIZE, value);

   deprecated_write_register_bytes (DEPRECATED_REGISTER_BYTE (regnum), buffer, DEPRECATED_REGISTER_RAW_SIZE (regnum));

   do_cleanups (old_chain);
 }
      else
 {
   xasprintf (&mi_error_message, "bad register number");
   return MI_CMD_ERROR;
 }
    }
  return MI_CMD_DONE;
}
