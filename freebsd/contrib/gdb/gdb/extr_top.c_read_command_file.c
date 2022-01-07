
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int FILE ;


 int command_loop () ;
 int do_cleanups (struct cleanup*) ;
 int do_restore_instream_cleanup ;
 int * instream ;
 struct cleanup* make_cleanup (int ,int *) ;

void
read_command_file (FILE *stream)
{
  struct cleanup *cleanups;

  cleanups = make_cleanup (do_restore_instream_cleanup, instream);
  instream = stream;
  command_loop ();
  do_cleanups (cleanups);
}
