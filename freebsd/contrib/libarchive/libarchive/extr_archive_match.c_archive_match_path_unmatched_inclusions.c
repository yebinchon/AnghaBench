
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unmatched_count; } ;
struct archive_match {TYPE_1__ inclusions; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_match_path_unmatched_inclusions(struct archive *_a)
{
 struct archive_match *a;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_unmatched_inclusions");
 a = (struct archive_match *)_a;

 return (a->inclusions.unmatched_count);
}
