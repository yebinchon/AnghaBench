
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
typedef scalar_t__ int64_t ;


 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_sparse_add_entry (struct archive_entry*,scalar_t__,int) ;
 int archive_entry_sparse_count (struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int ,int ) ;
 int failure (char*) ;

__attribute__((used)) static void
test_sparse_whole_file_data()
{
 struct archive_entry *ae;
 int64_t offset;
 int i;

 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_size(ae, 1024*10);




 offset = 0;
 for (i = 0; i < 10; i++) {
  archive_entry_sparse_add_entry(ae, offset, 1024);
  offset += 1024;
 }

 failure("There should be no sparse");
 assertEqualInt(0, archive_entry_sparse_count(ae));
 archive_entry_free(ae);
}
