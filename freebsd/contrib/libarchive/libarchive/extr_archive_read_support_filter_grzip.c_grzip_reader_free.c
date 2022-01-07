
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
grzip_reader_free(struct archive_read_filter_bidder *self)
{
 (void)self;
 return (ARCHIVE_OK);
}
