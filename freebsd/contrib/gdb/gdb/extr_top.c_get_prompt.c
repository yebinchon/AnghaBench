
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PROMPT (int ) ;
 scalar_t__ event_loop_p ;
 char* gdb_prompt_string ;

char *
get_prompt (void)
{
  if (event_loop_p)
    return PROMPT (0);
  else
    return gdb_prompt_string;
}
