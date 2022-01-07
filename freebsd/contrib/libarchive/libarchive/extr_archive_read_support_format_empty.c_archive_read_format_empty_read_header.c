
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FORMAT_EMPTY ;

__attribute__((used)) static int
archive_read_format_empty_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 (void)a;
 (void)entry;

 a->archive.archive_format = ARCHIVE_FORMAT_EMPTY;
 a->archive.archive_format_name = "Empty file";

 return (ARCHIVE_EOF);
}
