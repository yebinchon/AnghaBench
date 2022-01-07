
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;


 int ARCHIVE_FORMAT_RAR_V5 ;

__attribute__((used)) static void init_header(struct archive_read* a) {
 a->archive.archive_format = ARCHIVE_FORMAT_RAR_V5;
 a->archive.archive_format_name = "RAR5";
}
