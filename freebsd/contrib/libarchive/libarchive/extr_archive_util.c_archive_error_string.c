
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {char* error; } ;



const char *
archive_error_string(struct archive *a)
{

 if (a->error != ((void*)0) && *a->error != '\0')
  return (a->error);
 else
  return (((void*)0));
}
