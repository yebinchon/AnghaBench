
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int pdata; int compression_level; } ;
struct archive_write_filter {int write; scalar_t__ data; } ;
struct archive_string {int s; } ;


 int __archive_write_program_open (struct archive_write_filter*,int ,int ) ;
 int archive_compressor_zstd_write ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int archive_string_sprintf (struct archive_string*,char*,int ) ;

__attribute__((used)) static int
archive_compressor_zstd_open(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;
 struct archive_string as;
 int r;

 archive_string_init(&as);
 archive_string_sprintf(&as, "zstd -%d", data->compression_level);

 f->write = archive_compressor_zstd_write;
 r = __archive_write_program_open(f, data->pdata, as.s);
 archive_string_free(&as);
 return (r);
}
