
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_stream {int stream; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int VALUE_ADDRESS (struct value*) ;
 int VALUE_CONTENTS (struct value*) ;
 int VALUE_EMBEDDED_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_expression (struct expression*) ;
 int free_current_contents ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 int mi_error_message ;
 struct expression* parse_expression (char*) ;
 int ui_out_field_stream (int ,char*,struct ui_stream*) ;
 int ui_out_stream_delete (struct ui_stream*) ;
 struct ui_stream* ui_out_stream_new (int ) ;
 int uiout ;
 int val_print (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int xasprintf (int *,char*) ;

enum mi_cmd_result
mi_cmd_data_evaluate_expression (char *command, char **argv, int argc)
{
  struct expression *expr;
  struct cleanup *old_chain = ((void*)0);
  struct value *val;
  struct ui_stream *stb = ((void*)0);

  stb = ui_out_stream_new (uiout);

  if (argc != 1)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_evaluate_expression: Usage: -data-evaluate-expression expression");
      return MI_CMD_ERROR;
    }

  expr = parse_expression (argv[0]);

  old_chain = make_cleanup (free_current_contents, &expr);

  val = evaluate_expression (expr);


  val_print (VALUE_TYPE (val), VALUE_CONTENTS (val),
      VALUE_EMBEDDED_OFFSET (val), VALUE_ADDRESS (val),
      stb->stream, 0, 0, 0, 0);

  ui_out_field_stream (uiout, "value", stb);
  ui_out_stream_delete (stb);

  do_cleanups (old_chain);

  return MI_CMD_DONE;
}
