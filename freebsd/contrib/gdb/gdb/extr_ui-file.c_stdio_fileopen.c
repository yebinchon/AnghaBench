
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef int FILE ;


 struct ui_file* stdio_file_new (int *,int ) ;

struct ui_file *
stdio_fileopen (FILE *file)
{
  return stdio_file_new (file, 0);
}
