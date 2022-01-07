
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int FALSE ;
 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int stderr ;
 scalar_t__ svn_error_abort_on_malfunction ;
 scalar_t__ svn_error_get_malfunction_handler () ;
 int svn_handle_error2 (int *,int ,int ,char*) ;

__attribute__((used)) static void
default_warning_func(void *baton, svn_error_t *err)
{







  if (svn_error_get_malfunction_handler()
      == svn_error_abort_on_malfunction)


    svn_handle_error2(err, stderr, FALSE , "svn: fs-loader: ");
  SVN_ERR_MALFUNCTION_NO_RETURN();
}
