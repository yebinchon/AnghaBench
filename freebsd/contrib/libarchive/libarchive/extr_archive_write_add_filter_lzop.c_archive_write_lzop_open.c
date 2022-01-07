
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lzop {char compression_level; int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;
struct archive_string {int s; } ;


 int __archive_write_program_open (struct archive_write_filter*,int ,int ) ;
 int archive_strappend_char (struct archive_string*,char) ;
 int archive_strcpy (struct archive_string*,char*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;

__attribute__((used)) static int
archive_write_lzop_open(struct archive_write_filter *f)
{
 struct write_lzop *data = (struct write_lzop *)f->data;
 struct archive_string as;
 int r;

 archive_string_init(&as);
 archive_strcpy(&as, "lzop");

 if (data->compression_level > 0) {
  archive_strappend_char(&as, ' ');
  archive_strappend_char(&as, '-');
  archive_strappend_char(&as, '0' + data->compression_level);
 }

 r = __archive_write_program_open(f, data->pdata, as.s);
 archive_string_free(&as);
 return (r);
}
