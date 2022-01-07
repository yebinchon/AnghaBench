
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {scalar_t__ format_data; } ;
struct ar_w {int wrote_global_header; } ;


 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,char*,int) ;

__attribute__((used)) static int
archive_write_ar_close(struct archive_write *a)
{
 struct ar_w *ar;
 int ret;





 ar = (struct ar_w *)a->format_data;
 if (!ar->wrote_global_header) {
  ar->wrote_global_header = 1;
  ret = __archive_write_output(a, "!<arch>\n", 8);
  return (ret);
 }

 return (ARCHIVE_OK);
}
