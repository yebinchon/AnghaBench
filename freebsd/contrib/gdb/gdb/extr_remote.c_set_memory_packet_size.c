
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_packet_config {int fixed_p; long size; int name; } ;


 long MAX_REMOTE_PACKET_SIZE ;
 int error (char*,...) ;
 int query (char*,int ,long) ;
 scalar_t__ strcmp (char*,char*) ;
 long strtoul (char*,char**,int ) ;

__attribute__((used)) static void
set_memory_packet_size (char *args, struct memory_packet_config *config)
{
  int fixed_p = config->fixed_p;
  long size = config->size;
  if (args == ((void*)0))
    error ("Argument required (integer, `fixed' or `limited').");
  else if (strcmp (args, "hard") == 0
      || strcmp (args, "fixed") == 0)
    fixed_p = 1;
  else if (strcmp (args, "soft") == 0
    || strcmp (args, "limit") == 0)
    fixed_p = 0;
  else
    {
      char *end;
      size = strtoul (args, &end, 0);
      if (args == end)
 error ("Invalid %s (bad syntax).", config->name);
    }

  if (fixed_p && !config->fixed_p)
    {
      if (! query ("The target may not be able to correctly handle a %s\n"
     "of %ld bytes. Change the packet size? ",
     config->name, size))
 error ("Packet size not changed.");
    }

  config->fixed_p = fixed_p;
  config->size = size;
}
