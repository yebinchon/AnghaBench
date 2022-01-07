
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mydata {int fd; int * buffer; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int close (int) ;
 int file_open (struct archive*,struct mydata*) ;
 int free (int *) ;

__attribute__((used)) static int
file_switch(struct archive *a, void *data1, void *data2)
{
  struct mydata *mydata1 = (struct mydata *)data1;
  struct mydata *mydata2 = (struct mydata *)data2;
  int r = (ARCHIVE_OK);

  (void)a;
  if (mydata1 && mydata1->fd >= 0)
  {
    close(mydata1->fd);
    free(mydata1->buffer);
    mydata1->buffer = ((void*)0);
    mydata1->fd = -1;
  }
  if (mydata2)
  {
    r = file_open(a, mydata2);
  }
  return (r);
}
