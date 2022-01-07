
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pfctl_table (int,char**,char*,char const*,char*,char const*,int) ;
 int usage () ;

int
pfctl_command_tables(int argc, char *argv[], char *tname,
    const char *command, char *file, const char *anchor, int opts)
{
 if (tname == ((void*)0) || command == ((void*)0))
  usage();
 return pfctl_table(argc, argv, tname, command, file, anchor, opts);
}
