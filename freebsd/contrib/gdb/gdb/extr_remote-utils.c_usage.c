
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_stderr ;

__attribute__((used)) static void
usage (char *proto, char *junk)
{
  if (junk != ((void*)0))
    fprintf_unfiltered (gdb_stderr, "Unrecognized arguments: `%s'.\n", junk);

  error ("Usage: target %s [DEVICE [SPEED [DEBUG]]]\nwhere DEVICE is the name of a device or HOST:PORT", proto);


  return;
}
