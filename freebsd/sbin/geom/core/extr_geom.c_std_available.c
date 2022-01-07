
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int std_list_available () ;
 int std_load_available () ;
 int std_status_available () ;
 int std_unload_available () ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
std_available(const char *name)
{

 if (strcmp(name, "help") == 0)
  return (1);
 else if (strcmp(name, "list") == 0)
  return (std_list_available());
 else if (strcmp(name, "status") == 0)
  return (std_status_available());
 else if (strcmp(name, "load") == 0)
  return (std_load_available());
 else if (strcmp(name, "unload") == 0)
  return (std_unload_available());
 else
  assert(!"Unknown standard command.");
 return (0);
}
