
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int merge_prop_conflict (int *,int const*,int const*,int const*,int const*,int ,void*,int *) ;
 int svn_stream_for_stdout (int **,int *) ;

__attribute__((used)) static svn_error_t *
show_prop_conflict(const svn_string_t *base_propval,
                   const svn_string_t *my_propval,
                   const svn_string_t *their_propval,
                   const svn_string_t *merged_propval,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  svn_stream_t *output;

  SVN_ERR(svn_stream_for_stdout(&output, pool));
  SVN_ERR(merge_prop_conflict(output, base_propval, my_propval, their_propval,
                              merged_propval, cancel_func, cancel_baton, pool));

  return SVN_NO_ERROR;
}
