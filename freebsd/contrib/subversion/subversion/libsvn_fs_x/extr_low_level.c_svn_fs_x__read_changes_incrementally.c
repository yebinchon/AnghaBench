
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_x__change_t ;
typedef int (* svn_fs_x__change_receiver_t ) (void*,int *,int *) ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_change (int **,int *,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_x__read_changes_incrementally(svn_stream_t *stream,
                                     svn_fs_x__change_receiver_t
                                       change_receiver,
                                     void *change_receiver_baton,
                                     apr_pool_t *scratch_pool)
{
  svn_fs_x__change_t *change;
  apr_pool_t *iterpool;

  iterpool = svn_pool_create(scratch_pool);
  do
    {
      svn_pool_clear(iterpool);

      SVN_ERR(read_change(&change, stream, iterpool, iterpool));
      if (change)
        SVN_ERR(change_receiver(change_receiver_baton, change, iterpool));
    }
  while (change);
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
