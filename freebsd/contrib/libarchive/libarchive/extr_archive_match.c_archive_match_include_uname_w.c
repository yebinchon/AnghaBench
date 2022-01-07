
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct archive_match {int inclusion_unames; } ;
struct archive {int dummy; } ;


 int ARCHIVE_MATCH_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int add_owner_name (struct archive_match*,int *,int ,int const*) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_match_include_uname_w(struct archive *_a, const wchar_t *uname)
{
 struct archive_match *a;

 archive_check_magic(_a, ARCHIVE_MATCH_MAGIC,
     ARCHIVE_STATE_NEW, "archive_match_include_uname_w");
 a = (struct archive_match *)_a;
 return (add_owner_name(a, &(a->inclusion_unames), 0, uname));
}
