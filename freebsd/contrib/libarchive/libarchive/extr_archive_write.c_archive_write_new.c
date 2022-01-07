
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int vtable; int state; int magic; } ;
struct archive_write {int bytes_per_block; int bytes_in_last_block; int null_length; unsigned char* nulls; struct archive archive; } ;


 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int archive_write_vtable () ;
 scalar_t__ calloc (int,int) ;
 int free (struct archive_write*) ;

struct archive *
archive_write_new(void)
{
 struct archive_write *a;
 unsigned char *nulls;

 a = (struct archive_write *)calloc(1, sizeof(*a));
 if (a == ((void*)0))
  return (((void*)0));
 a->archive.magic = ARCHIVE_WRITE_MAGIC;
 a->archive.state = ARCHIVE_STATE_NEW;
 a->archive.vtable = archive_write_vtable();





 a->bytes_per_block = 10240;
 a->bytes_in_last_block = -1;


 a->null_length = 1024;
 nulls = (unsigned char *)calloc(1, a->null_length);
 if (nulls == ((void*)0)) {
  free(a);
  return (((void*)0));
 }
 a->nulls = nulls;
 return (&a->archive);
}
