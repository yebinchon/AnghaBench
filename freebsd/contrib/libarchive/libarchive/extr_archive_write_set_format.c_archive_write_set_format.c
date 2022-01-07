
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {int dummy; } ;
struct TYPE_2__ {int code; int (* setter ) (struct archive*) ;} ;


 int ARCHIVE_FATAL ;
 int EINVAL ;
 int archive_set_error (struct archive*,int ,char*) ;
 TYPE_1__* codes ;
 int stub1 (struct archive*) ;

int
archive_write_set_format(struct archive *a, int code)
{
 int i;

 for (i = 0; codes[i].code != 0; i++) {
  if (code == codes[i].code)
   return ((codes[i].setter)(a));
 }

 archive_set_error(a, EINVAL, "No such format");
 return (ARCHIVE_FATAL);
}
