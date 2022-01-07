
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_test_acl_t {int name; int qual; int tag; int permset; int type; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_entry_acl_add_entry (struct archive_entry*,int ,int ,int ,int ,int ) ;
 int archive_entry_acl_clear (struct archive_entry*) ;
 int assertEqualInt (int ,int ) ;
 int failure (char*,int ,int ,int ,int ,int ) ;

void
archive_test_set_acls(struct archive_entry *ae,
    struct archive_test_acl_t *acls, int n)
{
 int i;

 archive_entry_acl_clear(ae);
 for (i = 0; i < n; i++) {
  failure("type=%#010x, permset=%#010x, tag=%d, qual=%d name=%s",
      acls[i].type, acls[i].permset, acls[i].tag,
      acls[i].qual, acls[i].name);
  assertEqualInt(ARCHIVE_OK,
      archive_entry_acl_add_entry(ae,
   acls[i].type, acls[i].permset, acls[i].tag,
   acls[i].qual, acls[i].name));
 }
}
