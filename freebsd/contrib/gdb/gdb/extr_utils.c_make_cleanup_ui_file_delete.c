
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;


 int cleanup_chain ;
 int do_ui_file_delete ;
 struct cleanup* make_my_cleanup (int *,int ,struct ui_file*) ;

struct cleanup *
make_cleanup_ui_file_delete (struct ui_file *arg)
{
  return make_my_cleanup (&cleanup_chain, do_ui_file_delete, arg);
}
