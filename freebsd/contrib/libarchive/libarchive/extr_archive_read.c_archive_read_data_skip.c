
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive {int dummy; } ;
typedef int int64_t ;
struct TYPE_3__ {int (* read_data_skip ) (struct archive_read*) ;} ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_data_block (TYPE_2__*,void const**,size_t*,int *) ;
 int stub1 (struct archive_read*) ;

int
archive_read_data_skip(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 int r;
 const void *buff;
 size_t size;
 int64_t offset;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_DATA,
     "archive_read_data_skip");

 if (a->format->read_data_skip != ((void*)0))
  r = (a->format->read_data_skip)(a);
 else {
  while ((r = archive_read_data_block(&a->archive,
       &buff, &size, &offset))
      == ARCHIVE_OK)
   ;
 }

 if (r == ARCHIVE_EOF)
  r = ARCHIVE_OK;

 a->archive.state = ARCHIVE_STATE_HEADER;
 return (r);
}
