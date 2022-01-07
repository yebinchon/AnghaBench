
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef int FILE ;


 int * fopen (char*,char*) ;
 struct ui_file* stdio_file_new (int *,int) ;

struct ui_file *
gdb_fopen (char *name, char *mode)
{
  FILE *f = fopen (name, mode);
  if (f == ((void*)0))
    return ((void*)0);
  return stdio_file_new (f, 1);
}
