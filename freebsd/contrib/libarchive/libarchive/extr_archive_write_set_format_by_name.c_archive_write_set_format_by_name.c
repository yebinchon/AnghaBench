
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {int state; } ;
struct TYPE_2__ {int (* setter ) (struct archive*) ;int * name; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_STATE_FATAL ;
 int EINVAL ;
 int archive_set_error (struct archive*,int ,char*,char const*) ;
 TYPE_1__* names ;
 scalar_t__ strcmp (char const*,int *) ;
 int stub1 (struct archive*) ;

int
archive_write_set_format_by_name(struct archive *a, const char *name)
{
 int i;

 for (i = 0; names[i].name != ((void*)0); i++) {
  if (strcmp(name, names[i].name) == 0)
   return ((names[i].setter)(a));
 }

 archive_set_error(a, EINVAL, "No such format '%s'", name);
 a->state = ARCHIVE_STATE_FATAL;
 return (ARCHIVE_FATAL);
}
