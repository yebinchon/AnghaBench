
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fn_filename_completion_function (char const*,int) ;

char *
filename_completion_function(const char *name, int state)
{
 return fn_filename_completion_function(name, state);
}
