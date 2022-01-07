
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * status_buf ;

void
status_free(void)
{
 if (status_buf != ((void*)0)) {
  free(status_buf);
  status_buf = ((void*)0);
 }
}
