
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int * f_devdata; } ;


 int free (int *) ;

int
devclose(struct open_file *f)
{

 if (f->f_devdata != ((void*)0)) {
  free(f->f_devdata);
 }
 return (0);
}
