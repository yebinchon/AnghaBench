
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct archive_read_filter {TYPE_2__* archive; } ;
struct archive {int dummy; } ;
struct TYPE_6__ {int (* closer ) (struct archive*,int ) ;unsigned int nodes; TYPE_1__* dataset; } ;
struct TYPE_5__ {TYPE_3__ client; } ;
struct TYPE_4__ {int data; } ;


 int ARCHIVE_OK ;
 int stub1 (struct archive*,int ) ;

__attribute__((used)) static int
client_close_proxy(struct archive_read_filter *self)
{
 int r = ARCHIVE_OK, r2;
 unsigned int i;

 if (self->archive->client.closer == ((void*)0))
  return (r);
 for (i = 0; i < self->archive->client.nodes; i++)
 {
  r2 = (self->archive->client.closer)
   ((struct archive *)self->archive,
    self->archive->client.dataset[i].data);
  if (r > r2)
   r = r2;
 }
 return (r);
}
