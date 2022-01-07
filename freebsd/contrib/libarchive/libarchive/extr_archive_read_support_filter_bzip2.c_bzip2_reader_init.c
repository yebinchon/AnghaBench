
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {char* name; int code; } ;


 int ARCHIVE_FILTER_BZIP2 ;
 int __archive_read_program (struct archive_read_filter*,char*) ;

__attribute__((used)) static int
bzip2_reader_init(struct archive_read_filter *self)
{
 int r;

 r = __archive_read_program(self, "bzip2 -d");



 self->code = ARCHIVE_FILTER_BZIP2;
 self->name = "bzip2";
 return (r);
}
