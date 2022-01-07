
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {char* name; int code; } ;


 int ARCHIVE_FILTER_LZOP ;
 int __archive_read_program (struct archive_read_filter*,char*) ;

__attribute__((used)) static int
lzop_bidder_init(struct archive_read_filter *self)
{
 int r;

 r = __archive_read_program(self, "lzop -d");



 self->code = ARCHIVE_FILTER_LZOP;
 self->name = "lzop";
 return (r);
}
