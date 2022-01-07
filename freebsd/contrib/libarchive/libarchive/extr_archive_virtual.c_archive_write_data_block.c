
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {TYPE_1__* vtable; int state; } ;
typedef int la_ssize_t ;
typedef int la_int64_t ;
struct TYPE_2__ {int (* archive_write_data_block ) (struct archive*,void const*,size_t,int ) ;} ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_STATE_FATAL ;
 int archive_set_error (struct archive*,int ,char*) ;
 int stub1 (struct archive*,void const*,size_t,int ) ;

la_ssize_t
archive_write_data_block(struct archive *a, const void *buff, size_t s,
    la_int64_t o)
{
 if (a->vtable->archive_write_data_block == ((void*)0)) {
  archive_set_error(a, ARCHIVE_ERRNO_MISC,
      "archive_write_data_block not supported");
  a->state = ARCHIVE_STATE_FATAL;
  return (ARCHIVE_FATAL);
 }
 return ((a->vtable->archive_write_data_block)(a, buff, s, o));
}
