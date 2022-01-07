
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct archive_match* ids; } ;
struct TYPE_3__ {struct archive_match* ids; } ;
struct archive_match {int inclusion_gnames; int inclusion_unames; TYPE_2__ inclusion_gids; TYPE_1__ inclusion_uids; int exclusion_entry_list; int exclusions; int inclusions; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_STATE_FATAL ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int entry_list_free (int *) ;
 int free (struct archive_match*) ;
 int match_list_free (int *) ;

int
archive_match_free(struct archive *_a)
{
 struct archive_match *a;

 if (_a == ((void*)0))
  return (ARCHIVE_OK);
 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_match_free");
 a = (struct archive_match *)_a;
 match_list_free(&(a->inclusions));
 match_list_free(&(a->exclusions));
 entry_list_free(&(a->exclusion_entry_list));
 free(a->inclusion_uids.ids);
 free(a->inclusion_gids.ids);
 match_list_free(&(a->inclusion_unames));
 match_list_free(&(a->inclusion_gnames));
 free(a);
 return (ARCHIVE_OK);
}
