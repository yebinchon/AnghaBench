
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int stderr ;
 int svn_handle_warning2 (int ,int *,char*) ;

__attribute__((used)) static void
warning_func(void *baton,
             svn_error_t *err)
{
  if (! err)
    return;
  svn_handle_warning2(stderr, err, "svnfsfs: ");
}
