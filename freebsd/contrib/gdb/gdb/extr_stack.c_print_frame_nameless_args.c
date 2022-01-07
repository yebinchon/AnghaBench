
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int QUIT ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 scalar_t__ get_frame_args_address (struct frame_info*) ;
 long read_memory_integer (scalar_t__,int) ;

__attribute__((used)) static void
print_frame_nameless_args (struct frame_info *fi, long start, int num,
      int first, struct ui_file *stream)
{
  int i;
  CORE_ADDR argsaddr;
  long arg_value;

  for (i = 0; i < num; i++)
    {
      QUIT;
      argsaddr = get_frame_args_address (fi);
      if (!argsaddr)
 return;
      arg_value = read_memory_integer (argsaddr + start, sizeof (int));
      if (!first)
 fprintf_filtered (stream, ", ");
      fprintf_filtered (stream, "%ld", arg_value);
      first = 0;
      start += sizeof (int);
    }
}
