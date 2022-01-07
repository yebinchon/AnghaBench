
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;
struct archive_entry {int dummy; } ;


 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new2 (int *) ;
 int archive_entry_set_nlink (struct archive_entry*,int) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int write_header (struct archive_write*,struct archive_entry*) ;

__attribute__((used)) static int
archive_write_cpio_close(struct archive_write *a)
{
 int er;
 struct archive_entry *trailer;

 trailer = archive_entry_new2(((void*)0));

 archive_entry_set_nlink(trailer, 1);
 archive_entry_set_size(trailer, 0);
 archive_entry_set_pathname(trailer, "TRAILER!!!");
 er = write_header(a, trailer);
 archive_entry_free(trailer);
 return (er);
}
