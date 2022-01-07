
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree {int checkfs; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_read_format_mtree_options(struct archive_read *a,
    const char *key, const char *val)
{
 struct mtree *mtree;

 mtree = (struct mtree *)(a->format->data);
 if (strcmp(key, "checkfs") == 0) {

  if (val == ((void*)0) || val[0] == 0) {
   mtree->checkfs = 0;
  } else {
   mtree->checkfs = 1;
  }
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
