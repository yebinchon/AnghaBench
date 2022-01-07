
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ starting_tuple_sent; int conn; } ;
typedef TYPE_1__ mergeinfo_receiver_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_ra_svn__write_tuple (int ,int *,char*,char*) ;

__attribute__((used)) static svn_error_t *
send_mergeinfo_starting_tuple(mergeinfo_receiver_baton_t *baton,
                              apr_pool_t *scratch_pool)
{
  if (baton->starting_tuple_sent)
    return SVN_NO_ERROR;

  SVN_ERR(svn_ra_svn__write_tuple(baton->conn, scratch_pool,
                                  "w((!", "success"));
  baton->starting_tuple_sent = TRUE;

  return SVN_NO_ERROR;
}
