
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparse {int dummy; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int O_BINARY ;
 int O_RDONLY ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_set_pathname (struct archive_entry*,char const*) ;
 int archive_entry_sparse_count (struct archive_entry*) ;
 int archive_read_disk_entry_from_file (struct archive*,struct archive_entry*,int,int *) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int close (int) ;
 int failure (char const*) ;
 int open (char const*,int) ;

__attribute__((used)) static void
verify_sparse_file2(struct archive *a, const char *path,
    const struct sparse *sparse, int blocks, int preopen)
{
 struct archive_entry *ae;
 int fd;

 (void)sparse;
 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_pathname(ae, path);
 if (preopen)
  fd = open(path, O_RDONLY | O_BINARY);
 else
  fd = -1;
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_disk_entry_from_file(a, ae, fd, ((void*)0)));
 if (fd >= 0)
  close(fd);



 failure(path);
 assertEqualInt(blocks, archive_entry_sparse_count(ae));
 archive_entry_free(ae);
}
