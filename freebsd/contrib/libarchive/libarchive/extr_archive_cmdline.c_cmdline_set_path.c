
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_cmdline {char* path; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 char* realloc (char*,scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
cmdline_set_path(struct archive_cmdline *data, const char *path)
{
 char *newptr;

 newptr = realloc(data->path, strlen(path) + 1);
 if (newptr == ((void*)0))
  return (ARCHIVE_FATAL);
 data->path = newptr;
 strcpy(data->path, path);
 return (ARCHIVE_OK);
}
