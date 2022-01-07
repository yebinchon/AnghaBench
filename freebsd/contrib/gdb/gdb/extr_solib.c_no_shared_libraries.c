
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_clear_solib (int *) ;
 int objfile_purge_solibs () ;

void
no_shared_libraries (char *ignored, int from_tty)
{
  objfile_purge_solibs ();
  do_clear_solib (((void*)0));
}
