
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dont_repeat () ;
 int forget_cached_source_info () ;
 int init_source_path () ;
 int * last_source_visited ;
 int mod_path (char*,int *) ;
 scalar_t__ query (char*) ;
 int show_directories (char*,int) ;
 int source_path ;
 int xfree (int ) ;

void
directory_command (char *dirname, int from_tty)
{
  dont_repeat ();

  if (dirname == 0)
    {
      if (from_tty && query ("Reinitialize source path to empty? "))
 {
   xfree (source_path);
   init_source_path ();
 }
    }
  else
    {
      mod_path (dirname, &source_path);
      last_source_visited = ((void*)0);
    }
  if (from_tty)
    show_directories ((char *) 0, from_tty);
  forget_cached_source_info ();
}
