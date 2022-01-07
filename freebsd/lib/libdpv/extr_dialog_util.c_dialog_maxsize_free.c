
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * maxsize ;

void
dialog_maxsize_free(void)
{
 if (maxsize != ((void*)0)) {
  free(maxsize);
  maxsize = ((void*)0);
 }
}
