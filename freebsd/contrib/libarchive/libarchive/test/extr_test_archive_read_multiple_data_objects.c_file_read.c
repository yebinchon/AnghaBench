
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mydata {void* buffer; int fd; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;


 int BLOCK_SIZE ;
 int read (int ,void*,int ) ;

__attribute__((used)) static ssize_t
file_read(struct archive *a, void *data, const void **buff)
{
  struct mydata *mydata = (struct mydata *)data;
  (void)a;
  *buff = mydata->buffer;
  return read(mydata->fd, mydata->buffer, BLOCK_SIZE);
}
