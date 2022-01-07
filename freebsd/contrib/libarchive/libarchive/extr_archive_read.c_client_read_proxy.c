
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_read_filter {int data; TYPE_2__* archive; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* reader ) (int *,int ,void const**) ;} ;
struct TYPE_4__ {int archive; TYPE_1__ client; } ;


 int stub1 (int *,int ,void const**) ;

__attribute__((used)) static ssize_t
client_read_proxy(struct archive_read_filter *self, const void **buff)
{
 ssize_t r;
 r = (self->archive->client.reader)(&self->archive->archive,
     self->data, buff);
 return (r);
}
