
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {scalar_t__ compression_level; scalar_t__ timestamp; int pdata; } ;
struct archive_write_filter {int write; scalar_t__ data; } ;
struct archive_string {int s; } ;


 int __archive_write_program_open (struct archive_write_filter*,int ,int ) ;
 int archive_compressor_gzip_write ;
 int archive_strappend_char (struct archive_string*,scalar_t__) ;
 int archive_strcat (struct archive_string*,char*) ;
 int archive_strcpy (struct archive_string*,char*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;

__attribute__((used)) static int
archive_compressor_gzip_open(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;
 struct archive_string as;
 int r;

 archive_string_init(&as);
 archive_strcpy(&as, "gzip");


 if (data->compression_level > 0) {
  archive_strcat(&as, " -");
  archive_strappend_char(&as, '0' + data->compression_level);
 }
 if (data->timestamp < 0)

  archive_strcat(&as, " -n");
 else if (data->timestamp > 0)

  archive_strcat(&as, " -N");

 f->write = archive_compressor_gzip_write;
 r = __archive_write_program_open(f, data->pdata, as.s);
 archive_string_free(&as);
 return (r);
}
