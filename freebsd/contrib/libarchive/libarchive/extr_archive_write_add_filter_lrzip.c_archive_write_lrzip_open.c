
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lrzip {int compression; scalar_t__ compression_level; int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;
struct archive_string {int s; } ;


 int __archive_write_program_open (struct archive_write_filter*,int ,int ) ;
 int archive_strappend_char (struct archive_string*,scalar_t__) ;
 int archive_strcat (struct archive_string*,char*) ;
 int archive_strcpy (struct archive_string*,char*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;







__attribute__((used)) static int
archive_write_lrzip_open(struct archive_write_filter *f)
{
 struct write_lrzip *data = (struct write_lrzip *)f->data;
 struct archive_string as;
 int r;

 archive_string_init(&as);
 archive_strcpy(&as, "lrzip -q");


 switch (data->compression) {
 case 131:
  break;
 case 133:
  archive_strcat(&as, " -b");
  break;
 case 132:
  archive_strcat(&as, " -g");
  break;
 case 130:
  archive_strcat(&as, " -l");
  break;
 case 129:
  archive_strcat(&as, " -n");
  break;
 case 128:
  archive_strcat(&as, " -z");
  break;
 }


 if (data->compression_level > 0) {
  archive_strcat(&as, " -L ");
  archive_strappend_char(&as, '0' + data->compression_level);
 }

 r = __archive_write_program_open(f, data->pdata, as.s);
 archive_string_free(&as);
 return (r);
}
