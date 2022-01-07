
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_extract {int dummy; } ;
struct archive_read {struct archive_read_extract* extract; int cleanup_archive_extract; int archive; } ;


 int ENOMEM ;
 int archive_read_extract_cleanup ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;

struct archive_read_extract *
__archive_read_get_extract(struct archive_read *a)
{
 if (a->extract == ((void*)0)) {
  a->extract = (struct archive_read_extract *)calloc(1, sizeof(*a->extract));
  if (a->extract == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM, "Can't extract");
   return (((void*)0));
  }
  a->cleanup_archive_extract = archive_read_extract_cleanup;
 }
 return (a->extract);
}
