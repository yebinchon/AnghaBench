
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int __archive_read_register_format (struct archive_read*,int *,int *,int ,int *,int ,int ,int *,int *,int *,int *,int *) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_empty_bid ;
 int archive_read_format_empty_read_data ;
 int archive_read_format_empty_read_header ;

int
archive_read_support_format_empty(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_empty");

 r = __archive_read_register_format(a,
     ((void*)0),
     ((void*)0),
     archive_read_format_empty_bid,
     ((void*)0),
     archive_read_format_empty_read_header,
     archive_read_format_empty_read_data,
     ((void*)0),
     ((void*)0),
     ((void*)0),
     ((void*)0),
     ((void*)0));

 return (r);
}
