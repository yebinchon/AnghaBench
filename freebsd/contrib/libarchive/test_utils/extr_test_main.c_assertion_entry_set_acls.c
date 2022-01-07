
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_test_acl_t {int name; int qual; int tag; int permset; int type; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_acl_add_entry (struct archive_entry*,int ,int ,int ,int ,int ) ;
 int archive_entry_acl_clear (struct archive_entry*) ;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char*,int ,int ,int ,int ,int ) ;

int
assertion_entry_set_acls(const char *file, int line, struct archive_entry *ae,
    struct archive_test_acl_t *acls, int n)
{
 int i, r, ret;

 assertion_count(file, line);

 ret = 0;
 archive_entry_acl_clear(ae);
 for (i = 0; i < n; i++) {
  r = archive_entry_acl_add_entry(ae,
      acls[i].type, acls[i].permset, acls[i].tag,
      acls[i].qual, acls[i].name);
  if (r != 0) {
   ret = 1;
   failure_start(file, line, "type=%#010x, ",
       "permset=%#010x, tag=%d, qual=%d name=%s",
       acls[i].type, acls[i].permset, acls[i].tag,
       acls[i].qual, acls[i].name);
   failure_finish(((void*)0));
  }
 }

 return (ret);
}
