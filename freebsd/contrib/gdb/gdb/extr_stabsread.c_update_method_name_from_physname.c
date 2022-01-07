
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char*) ;
 char* method_name_from_physname (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int symfile_complaints ;
 int xfree (char*) ;

__attribute__((used)) static void
update_method_name_from_physname (char **old_name, char *physname)
{
  char *method_name;

  method_name = method_name_from_physname (physname);

  if (method_name == ((void*)0))
    {
      complaint (&symfile_complaints,
   "Method has bad physname %s\n", physname);
      return;
    }

  if (strcmp (*old_name, method_name) != 0)
    {
      xfree (*old_name);
      *old_name = method_name;
    }
  else
    xfree (method_name);
}
