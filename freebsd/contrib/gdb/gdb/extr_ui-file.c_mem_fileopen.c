
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 struct ui_file* mem_file_new () ;

struct ui_file *
mem_fileopen (void)
{
  return mem_file_new ();
}
