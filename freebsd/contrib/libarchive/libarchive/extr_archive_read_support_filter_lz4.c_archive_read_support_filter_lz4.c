
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {char* name; int free; int * options; int init; int bid; int * data; } ;
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 scalar_t__ __archive_read_get_bidder (struct archive_read*,struct archive_read_filter_bidder**) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (struct archive*,int ,char*) ;
 int lz4_reader_bid ;
 int lz4_reader_free ;
 int lz4_reader_init ;

int
archive_read_support_filter_lz4(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_filter_bidder *reader;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_filter_lz4");

 if (__archive_read_get_bidder(a, &reader) != ARCHIVE_OK)
  return (ARCHIVE_FATAL);

 reader->data = ((void*)0);
 reader->name = "lz4";
 reader->bid = lz4_reader_bid;
 reader->init = lz4_reader_init;
 reader->options = ((void*)0);
 reader->free = lz4_reader_free;



 archive_set_error(_a, ARCHIVE_ERRNO_MISC,
     "Using external lz4 program");
 return (ARCHIVE_WARN);

}
