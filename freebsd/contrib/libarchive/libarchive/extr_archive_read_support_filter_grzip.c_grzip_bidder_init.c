
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {char* name; int code; } ;


 int ARCHIVE_FILTER_GRZIP ;
 int __archive_read_program (struct archive_read_filter*,char*) ;

__attribute__((used)) static int
grzip_bidder_init(struct archive_read_filter *self)
{
 int r;

 r = __archive_read_program(self, "grzip -d");



 self->code = ARCHIVE_FILTER_GRZIP;
 self->name = "grzip";
 return (r);
}
