
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shar {int dump; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {TYPE_1__ archive; int format_write_data; scalar_t__ format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FORMAT_SHAR_DUMP ;
 int ARCHIVE_OK ;
 int archive_write_set_format_shar (TYPE_1__*) ;
 int archive_write_shar_data_uuencode ;

int
archive_write_set_format_shar_dump(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct shar *shar;

 archive_write_set_format_shar(&a->archive);
 shar = (struct shar *)a->format_data;
 shar->dump = 1;
 a->format_write_data = archive_write_shar_data_uuencode;
 a->archive.archive_format = ARCHIVE_FORMAT_SHAR_DUMP;
 a->archive.archive_format_name = "shar dump";
 return (ARCHIVE_OK);
}
