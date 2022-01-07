
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int * data; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
compress_bidder_free(struct archive_read_filter_bidder *self)
{
 self->data = ((void*)0);
 return (ARCHIVE_OK);
}
