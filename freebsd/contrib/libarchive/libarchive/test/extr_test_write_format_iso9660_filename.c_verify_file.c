
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fns {int cnt; size_t maxlen; size_t longest_len; size_t maxflen; size_t maxelen; int opt; int * names; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int ALLOW_LDOT ;
 int ONE_DOT ;
 int ROCKRIDGE ;
 int S_IFREG ;
 int UPPER_CASE_ONLY ;
 char archive_entry_atime (struct archive_entry*) ;
 char archive_entry_birthtime (struct archive_entry*) ;
 char archive_entry_birthtime_is_set (struct archive_entry*) ;
 char archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 char archive_entry_mtime (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 char archive_entry_size (struct archive_entry*) ;
 char* archive_entry_symlink (struct archive_entry*) ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int assert (int) ;
 int assertEqualInt (char const,char) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char*,char const*) ;
 char const* strchr (char const*,char) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strdup (char*) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
verify_file(struct archive *a, enum vtype type, struct fns *fns)
{
 struct archive_entry *ae;
 int i;

 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 if (type == ROCKRIDGE) {
  assertEqualInt(2, archive_entry_birthtime(ae));
  assertEqualInt(3, archive_entry_atime(ae));
  assertEqualInt(4, archive_entry_ctime(ae));
 } else {
  assertEqualInt(0, archive_entry_birthtime_is_set(ae));
  assertEqualInt(5, archive_entry_atime(ae));
  assertEqualInt(5, archive_entry_ctime(ae));
 }
 assertEqualInt(5, archive_entry_mtime(ae));
 if (type == ROCKRIDGE)
  assert((S_IFREG | 0555) == archive_entry_mode(ae));
 else
  assert((S_IFREG | 0400) == archive_entry_mode(ae));
 assertEqualInt(0, archive_entry_size(ae));




 for (i = 0; i < fns->cnt; i++) {
  const char *p;
  const char *pathname = archive_entry_pathname(ae);
  const char *symlinkname = archive_entry_symlink(ae);
  size_t length;

  if (symlinkname != ((void*)0)) {
   length = strlen(symlinkname);
   assert(length == 1 || length == 128 || length == 255);
   assertEqualInt(symlinkname[length-1], 'x');
  }
  failure("Found duplicate for %s", pathname);
  assert(strcmp(fns->names[i], pathname) != 0);
  assert((length = strlen(pathname)) <= fns->maxlen);
  if (length > fns->longest_len)
   fns->longest_len = length;
  p = strrchr(pathname, '.');
  if (p != ((void*)0)) {

   assert((size_t)(p - pathname) <= fns->maxflen);

   assert(strlen(p+1) <= fns->maxelen);
   if (fns->opt & ONE_DOT) {

    assert(strchr(pathname, '.') == p);
   }
  }
  for (p = pathname; *p; p++) {
   if (fns->opt & UPPER_CASE_ONLY) {

    assert(*p < 'a' || *p > 'z');
   } else
    break;
  }
  if ((fns->opt & ALLOW_LDOT) == 0)

   assert(*pathname != '.');
 }

 fns->names[fns->cnt++] = strdup(archive_entry_pathname(ae));
}
