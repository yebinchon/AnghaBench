
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_option {struct mtree_option* next; } ;
struct mtree_entry {struct mtree_option* options; } ;
struct mtree {int dummy; } ;
struct archive_read {int archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int MTREE_HAS_TYPE ;
 int archive_set_error (int *,int ,char*) ;
 int parse_keyword (struct archive_read*,struct mtree*,struct archive_entry*,struct mtree_option*,int*) ;

__attribute__((used)) static int
parse_line(struct archive_read *a, struct archive_entry *entry,
    struct mtree *mtree, struct mtree_entry *mp, int *parsed_kws)
{
 struct mtree_option *iter;
 int r = ARCHIVE_OK, r1;

 for (iter = mp->options; iter != ((void*)0); iter = iter->next) {
  r1 = parse_keyword(a, mtree, entry, iter, parsed_kws);
  if (r1 < r)
   r = r1;
 }
 if (r == ARCHIVE_OK && (*parsed_kws & MTREE_HAS_TYPE) == 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Missing type keyword in mtree specification");
  return (ARCHIVE_WARN);
 }
 return (r);
}
