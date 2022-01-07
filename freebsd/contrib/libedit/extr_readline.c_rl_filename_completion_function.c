
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fn_filename_completion_function (char const*,int) ;

char *
rl_filename_completion_function (const char *text, int state)
{
 return fn_filename_completion_function(text, state);
}
