
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int kgdb_trgt_ops ;
 int printf_filtered (char*) ;
 int reinit_frame_cache () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
kgdb_trgt_detach(char *args, int from_tty)
{

 if (args)
  error ("Too many arguments");
 unpush_target(&kgdb_trgt_ops);
 reinit_frame_cache();
 if (from_tty)
  printf_filtered("No vmcore file now.\n");
}
