
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_args_args {int stream; int fi; int func; } ;


 int FRAME_NUM_ARGS (int ) ;
 scalar_t__ FRAME_NUM_ARGS_P () ;
 int gdb_assert (int) ;
 int print_frame_args (int ,int ,int,int ) ;

__attribute__((used)) static int
print_args_stub (void *args)
{
  int numargs;
  struct print_args_args *p = (struct print_args_args *) args;

  if (FRAME_NUM_ARGS_P ())
    {
      numargs = FRAME_NUM_ARGS (p->fi);
      gdb_assert (numargs >= 0);
    }
  else
    numargs = -1;
  print_frame_args (p->func, p->fi, numargs, p->stream);
  return 0;
}
