
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_notify_t ;
struct TYPE_5__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct notify_baton {scalar_t__ had_print_error; } ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ SVN_ERR_IO_PIPE_WRITE_ERROR ;
 scalar_t__ TRUE ;
 TYPE_1__* notify_body (struct notify_baton*,int const*,int *) ;
 int stderr ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_handle_error2 (TYPE_1__*,int ,int ,char*) ;

__attribute__((used)) static void
notify(void *baton, const svn_wc_notify_t *n, apr_pool_t *pool)
{
  struct notify_baton *nb = baton;
  svn_error_t *err;

  err = notify_body(nb, n, pool);




  if (err && !nb->had_print_error)
    {
      nb->had_print_error = TRUE;







      if (err->apr_err != SVN_ERR_IO_PIPE_WRITE_ERROR)
        svn_handle_error2(err, stderr, FALSE, "svn: ");
    }
  svn_error_clear(err);
}
