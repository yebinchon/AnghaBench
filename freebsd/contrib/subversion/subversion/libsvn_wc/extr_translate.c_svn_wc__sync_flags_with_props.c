
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_wc__db_lock_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_NEEDS_LOCK ;
 scalar_t__ TRUE ;
 scalar_t__ svn_hash_gets (int *,int ) ;
 int svn_io_set_file_executable (char const*,scalar_t__,scalar_t__,int *) ;
 int svn_io_set_file_read_only (char const*,scalar_t__,int *) ;
 int svn_io_set_file_read_write (char const*,scalar_t__,int *) ;
 scalar_t__ svn_node_file ;
 int svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int **,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc__sync_flags_with_props(svn_boolean_t *did_set,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_wc__db_lock_t *lock;
  apr_hash_t *props = ((void*)0);
  svn_boolean_t had_props;
  svn_boolean_t props_mod;

  if (did_set)
    *did_set = FALSE;




  SVN_ERR(svn_wc__db_read_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), &lock, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               &had_props, &props_mod, ((void*)0), ((void*)0), ((void*)0),
                               db, local_abspath,
                               scratch_pool, scratch_pool));





  if (kind != svn_node_file
      || (status != svn_wc__db_status_normal
          && status != svn_wc__db_status_added))
    return SVN_NO_ERROR;

  if (props_mod || had_props)
    SVN_ERR(svn_wc__db_read_props(&props, db, local_abspath, scratch_pool,
                                  scratch_pool));
  else
    props = ((void*)0);



  if (did_set)
    *did_set = TRUE;


  if (status != svn_wc__db_status_normal
      || props == ((void*)0)
      || ! svn_hash_gets(props, SVN_PROP_NEEDS_LOCK)
      || lock)
    {
      SVN_ERR(svn_io_set_file_read_write(local_abspath, FALSE, scratch_pool));
    }
  else
    {


      apr_hash_t *pristine_props;

      if (! props_mod)
        pristine_props = props;
      else if (had_props)
        SVN_ERR(svn_wc__db_read_pristine_props(&pristine_props, db, local_abspath,
                                                scratch_pool, scratch_pool));
      else
        pristine_props = ((void*)0);

      if (pristine_props
            && svn_hash_gets(pristine_props, SVN_PROP_NEEDS_LOCK) )


        SVN_ERR(svn_io_set_file_read_only(local_abspath, FALSE, scratch_pool));
    }




  if (props == ((void*)0)
      || ! svn_hash_gets(props, SVN_PROP_EXECUTABLE))
    {

      SVN_ERR(svn_io_set_file_executable(local_abspath, FALSE, FALSE,
                                         scratch_pool));
    }
  else
    SVN_ERR(svn_io_set_file_executable(local_abspath, TRUE, FALSE,
                                       scratch_pool));


  return SVN_NO_ERROR;
}
