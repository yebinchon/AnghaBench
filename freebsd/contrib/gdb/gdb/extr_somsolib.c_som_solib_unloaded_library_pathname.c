
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int som_solib_have_unload_event (int) ;
 char* som_solib_library_pathname (int) ;

char *
som_solib_unloaded_library_pathname (int pid)
{
  if (!som_solib_have_unload_event (pid))
    error ("Must have an unload event to use this query");

  return som_solib_library_pathname (pid);
}
