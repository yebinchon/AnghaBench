
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {struct cpio* ino_list; } ;
struct archive_write {int * format_data; } ;


 int ARCHIVE_OK ;
 int free (struct cpio*) ;

__attribute__((used)) static int
archive_write_cpio_free(struct archive_write *a)
{
 struct cpio *cpio;

 cpio = (struct cpio *)a->format_data;
 free(cpio->ino_list);
 free(cpio);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
