
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int inclusion_gids; } ;
struct archive {int dummy; } ;
typedef int la_int64_t ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int add_owner_id (struct archive_match*,int *,int ) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_match_include_gid(struct archive *_a, la_int64_t gid)
{
 struct archive_match *a;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_include_gid");
 a = (struct archive_match *)_a;
 return (add_owner_id(a, &(a->inclusion_gids), gid));
}
