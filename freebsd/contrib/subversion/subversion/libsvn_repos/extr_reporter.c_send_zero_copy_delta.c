
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ zero_copy_limit; int zero_copy_succeeded; int dbaton; int dhandler; } ;
typedef TYPE_1__ zero_copy_baton_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_txdelta_send_contents (unsigned char const*,scalar_t__,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
send_zero_copy_delta(const unsigned char *contents,
                     apr_size_t len,
                     void *baton,
                     apr_pool_t *pool)
{
  zero_copy_baton_t *zero_copy_baton = baton;



  if (len > zero_copy_baton->zero_copy_limit)
    {
      zero_copy_baton->zero_copy_succeeded = FALSE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_txdelta_send_contents(contents, len,
                                    zero_copy_baton->dhandler,
                                    zero_copy_baton->dbaton, pool));


  zero_copy_baton->zero_copy_succeeded = TRUE;
  return SVN_NO_ERROR;
}
