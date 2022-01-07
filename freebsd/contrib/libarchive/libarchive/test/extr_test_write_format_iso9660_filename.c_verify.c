
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fns {int alloc; scalar_t__ maxlen; scalar_t__ longest_len; int * names; scalar_t__ cnt; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;



 int S_IFDIR ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,unsigned char*,size_t) ;
 scalar_t__ archive_read_set_option (struct archive*,int *,char*,int *) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int) ;
 int assertA (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualString (char*,int ) ;
 int free (int ) ;
 int memset (int *,int ,int) ;
 int verify_file (struct archive*,int,struct fns*) ;

__attribute__((used)) static void
verify(unsigned char *buff, size_t used, enum vtype type, struct fns *fns)
{
 struct archive *a;
 struct archive_entry *ae;
 size_t i;




 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, 0, archive_read_support_format_all(a));
 assertEqualIntA(a, 0, archive_read_support_filter_all(a));
 if (type >= 1)
  assertA(0 == archive_read_set_option(a, ((void*)0), "rockridge",
      ((void*)0)));
 if (type >= 2)
  assertA(0 == archive_read_set_option(a, ((void*)0), "joliet",
      ((void*)0)));
 assertEqualIntA(a, 0, archive_read_open_memory(a, buff, used));





 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualInt(archive_entry_atime(ae), archive_entry_ctime(ae));
 assertEqualInt(archive_entry_atime(ae), archive_entry_mtime(ae));
 assertEqualString(".", archive_entry_pathname(ae));
 switch (type) {
 case 128:
  assert((S_IFDIR | 0555) == archive_entry_mode(ae));
  break;
 case 129:
  assert((S_IFDIR | 0700) == archive_entry_mode(ae));
  break;
 case 130:
  assert((S_IFDIR | 0700) == archive_entry_mode(ae));
  break;
 }




 memset(fns->names, 0, sizeof(char *) * fns->alloc);
 fns->cnt = 0;
 for (i = 0; i < fns->alloc; i++)
  verify_file(a, type, fns);
 for (i = 0; i < fns->alloc; i++)
  free(fns->names[i]);
 assertEqualInt((int)fns->longest_len, (int)fns->maxlen);




 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));
}
