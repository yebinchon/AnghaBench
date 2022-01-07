
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int * format_data; } ;
struct ar_w {scalar_t__ has_strtab; struct ar_w* strtab; } ;


 int ARCHIVE_OK ;
 int free (struct ar_w*) ;

__attribute__((used)) static int
archive_write_ar_free(struct archive_write *a)
{
 struct ar_w *ar;

 ar = (struct ar_w *)a->format_data;

 if (ar == ((void*)0))
  return (ARCHIVE_OK);

 if (ar->has_strtab > 0) {
  free(ar->strtab);
  ar->strtab = ((void*)0);
 }

 free(ar);
 a->format_data = ((void*)0);
 return (ARCHIVE_OK);
}
