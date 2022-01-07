
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mydata {scalar_t__ fd; int * buffer; int filename; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int BLOCK_SIZE ;
 int O_BINARY ;
 int O_RDONLY ;
 scalar_t__ calloc (int,int ) ;
 scalar_t__ open (int ,int) ;

__attribute__((used)) static int
file_open(struct archive *a, void *data)
{
  struct mydata *mydata = (struct mydata *)data;
  (void)a;
  if (mydata->fd < 0)
  {
    mydata->fd = open(mydata->filename, O_RDONLY | O_BINARY);
    if (mydata->fd >= 0)
    {
      if ((mydata->buffer = (void*)calloc(1, BLOCK_SIZE)) == ((void*)0))
        return (ARCHIVE_FAILED);
    }
  }
  return (ARCHIVE_OK);
}
