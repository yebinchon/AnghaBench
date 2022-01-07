
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_read_filter {int data; TYPE_2__* archive; } ;
typedef int int64_t ;
struct TYPE_3__ {int (* seeker ) (int *,int ,int ,int) ;} ;
struct TYPE_4__ {int archive; TYPE_1__ client; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int archive_set_error (int *,int ,char*) ;
 int stub1 (int *,int ,int ,int) ;

__attribute__((used)) static int64_t
client_seek_proxy(struct archive_read_filter *self, int64_t offset, int whence)
{





 if (self->archive->client.seeker == ((void*)0)) {
  archive_set_error(&self->archive->archive, ARCHIVE_ERRNO_MISC,
      "Current client reader does not support seeking a device");
  return (ARCHIVE_FAILED);
 }
 return (self->archive->client.seeker)(&self->archive->archive,
     self->data, offset, whence);
}
