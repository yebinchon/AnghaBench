
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arg_array_len; char** arg_array_val; } ;
typedef TYPE_1__ arg_array ;


 char* find_white_space (char*) ;
 int memset (char*,char,int) ;
 char* savestring (char*,int) ;
 char* skip_white_space (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
parse_args (char *arg_string, arg_array *arg_struct)
{
  int arg_count = 0;
  int arg_index = 0;
  char *p0;

  memset ((char *) arg_struct, '\0', sizeof (arg_array));



  p0 = arg_string;
  while (*p0 != '\0')
    {
      if (*(p0 = skip_white_space (p0)) == '\0')
 break;
      p0 = find_white_space (p0);
      arg_count++;
    }

  arg_struct->arg_array_len = arg_count;
  arg_struct->arg_array_val = (char **) xmalloc ((arg_count + 1)
       * sizeof (char *));



  while (*(arg_string = skip_white_space (arg_string)))
    {
      p0 = find_white_space (arg_string);
      arg_struct->arg_array_val[arg_index++] = savestring (arg_string,
          p0 - arg_string);
      arg_string = p0;
    }

  arg_struct->arg_array_val[arg_count] = ((void*)0);
}
