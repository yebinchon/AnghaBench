
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_read_filter {int data; TYPE_2__* archive; } ;
struct archive {int dummy; } ;
struct TYPE_3__ {int (* opener ) (struct archive*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ client; } ;


 int ARCHIVE_OK ;
 int stub1 (struct archive*,int ) ;

__attribute__((used)) static int
client_open_proxy(struct archive_read_filter *self)
{
  int r = ARCHIVE_OK;
 if (self->archive->client.opener != ((void*)0))
  r = (self->archive->client.opener)(
      (struct archive *)self->archive, self->data);
 return (r);
}
