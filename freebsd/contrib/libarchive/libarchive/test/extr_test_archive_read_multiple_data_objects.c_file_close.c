
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mydata {struct mydata* filename; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int file_switch (struct archive*,struct mydata*,int *) ;
 int free (struct mydata*) ;

__attribute__((used)) static int
file_close(struct archive *a, void *data)
{
  struct mydata *mydata = (struct mydata *)data;
  if (mydata == ((void*)0))
    return (ARCHIVE_FATAL);
  file_switch(a, mydata, ((void*)0));
  free(mydata->filename);
  free(mydata);
  return (ARCHIVE_OK);
}
