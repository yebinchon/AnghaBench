
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fgetc (scalar_t__) ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ instream ;
 scalar_t__ stdin ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

char *
gdb_readline (char *prompt_arg)
{
  int c;
  char *result;
  int input_index = 0;
  int result_size = 80;

  if (prompt_arg)
    {



      fputs_unfiltered (prompt_arg, gdb_stdout);
      gdb_flush (gdb_stdout);
    }

  result = (char *) xmalloc (result_size);

  while (1)
    {


      c = fgetc (instream ? instream : stdin);

      if (c == EOF)
 {
   if (input_index > 0)



     break;
   xfree (result);
   return ((void*)0);
 }

      if (c == '\n')

 break;
      result[input_index++] = c;
      while (input_index >= result_size)
 {
   result_size *= 2;
   result = (char *) xrealloc (result, result_size);
 }
    }

  result[input_index++] = '\0';
  return result;
}
