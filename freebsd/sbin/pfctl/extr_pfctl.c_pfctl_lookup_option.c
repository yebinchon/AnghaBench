
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncmp (char*,char const* const,int ) ;

const char *
pfctl_lookup_option(char *cmd, const char * const *list)
{
 if (cmd != ((void*)0) && *cmd)
  for (; *list; list++)
   if (!strncmp(cmd, *list, strlen(cmd)))
    return (*list);
 return (((void*)0));
}
