
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_cmdline {char** argv; int argc; int * path; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 char** realloc (char**,int) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
cmdline_add_arg(struct archive_cmdline *data, const char *arg)
{
 char **newargv;

 if (data->path == ((void*)0))
  return (ARCHIVE_FAILED);

 newargv = realloc(data->argv, (data->argc + 2) * sizeof(char *));
 if (newargv == ((void*)0))
  return (ARCHIVE_FATAL);
 data->argv = newargv;
 data->argv[data->argc] = strdup(arg);
 if (data->argv[data->argc] == ((void*)0))
  return (ARCHIVE_FATAL);

 data->argv[++data->argc] = ((void*)0);
 return (ARCHIVE_OK);
}
