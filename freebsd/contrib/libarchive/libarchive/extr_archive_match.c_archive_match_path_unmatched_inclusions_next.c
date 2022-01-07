
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int inclusions; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int match_list_unmatched_inclusions_next (struct archive_match*,int *,int,void const**) ;

int
archive_match_path_unmatched_inclusions_next(struct archive *_a,
    const char **_p)
{
 struct archive_match *a;
 const void *v;
 int r;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_unmatched_inclusions_next");
 a = (struct archive_match *)_a;

 r = match_list_unmatched_inclusions_next(a, &(a->inclusions), 1, &v);
 *_p = (const char *)v;
 return (r);
}
