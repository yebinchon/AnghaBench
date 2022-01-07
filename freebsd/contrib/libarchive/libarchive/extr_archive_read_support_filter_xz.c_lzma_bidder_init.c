
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {char* name; int code; } ;


 int ARCHIVE_FILTER_LZMA ;
 int __archive_read_program (struct archive_read_filter*,char*) ;

__attribute__((used)) static int
lzma_bidder_init(struct archive_read_filter *self)
{
 int r;

 r = __archive_read_program(self, "lzma -d -qq");



 self->code = ARCHIVE_FILTER_LZMA;
 self->name = "lzma";
 return (r);
}
