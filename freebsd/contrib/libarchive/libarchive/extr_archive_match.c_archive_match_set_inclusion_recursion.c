
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_match {int recursive_include; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_match_set_inclusion_recursion(struct archive *_a, int enabled)
{
 struct archive_match *a;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_set_inclusion_recursion");
 a = (struct archive_match *)_a;
 a->recursive_include = enabled;
 return (ARCHIVE_OK);
}
