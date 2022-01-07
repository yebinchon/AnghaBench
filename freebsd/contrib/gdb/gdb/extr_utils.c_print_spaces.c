
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fputs_unfiltered (int ,struct ui_file*) ;
 int n_spaces (int) ;

void
print_spaces (int n, struct ui_file *file)
{
  fputs_unfiltered (n_spaces (n), file);
}
