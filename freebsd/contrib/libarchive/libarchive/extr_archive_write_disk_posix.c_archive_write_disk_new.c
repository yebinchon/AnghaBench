
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int vtable; int state; int magic; } ;
struct archive_write_disk {int decmpfs_compression_level; struct archive archive; int path_safe; int user_uid; int user_umask; int start_time; } ;


 int ARCHIVE_STATE_HEADER ;
 int ARCHIVE_WRITE_DISK_MAGIC ;
 int * archive_string_ensure (int *,int) ;
 int archive_write_disk_vtable () ;
 scalar_t__ calloc (int,int) ;
 int free (struct archive_write_disk*) ;
 int geteuid () ;
 int time (int *) ;
 int umask (int ) ;

struct archive *
archive_write_disk_new(void)
{
 struct archive_write_disk *a;

 a = (struct archive_write_disk *)calloc(1, sizeof(*a));
 if (a == ((void*)0))
  return (((void*)0));
 a->archive.magic = ARCHIVE_WRITE_DISK_MAGIC;

 a->archive.state = ARCHIVE_STATE_HEADER;
 a->archive.vtable = archive_write_disk_vtable();
 a->start_time = time(((void*)0));

 umask(a->user_umask = umask(0));



 if (archive_string_ensure(&a->path_safe, 512) == ((void*)0)) {
  free(a);
  return (((void*)0));
 }



 return (&a->archive);
}
