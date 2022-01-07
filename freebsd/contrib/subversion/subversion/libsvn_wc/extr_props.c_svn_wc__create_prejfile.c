
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
typedef int svn_wc__db_t ;
struct TYPE_17__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_18__ {struct TYPE_18__* next; TYPE_1__* children; } ;
typedef TYPE_3__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_16__ {TYPE_3__* next; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 int prop_conflict_from_skel (TYPE_2__ const**,TYPE_3__ const*,int ,void*,int *,int *) ;
 int prop_conflict_new (TYPE_2__ const**,char const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int ,void*,int *,int *) ;
 TYPE_2__* svn_hash_gets (int *,char const*) ;
 int svn_io_file_del_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 int svn_stream_puts (int *,int ) ;
 int svn_wc__conflict_read_info (scalar_t__*,int *,int *,int *,int *,int *,char const*,TYPE_3__*,int *,int *) ;
 int svn_wc__conflict_read_prop_conflict (int *,int **,int **,int **,int **,int *,char const*,TYPE_3__*,int *,int *) ;
 int svn_wc__db_read_conflict (TYPE_3__**,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc_operation_merge ;

svn_error_t *
svn_wc__create_prejfile(const char **tmp_prejfile_abspath,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        const svn_skel_t *prop_conflict_data,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *tempdir_abspath;
  svn_stream_t *stream;
  const char *temp_abspath;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  const svn_skel_t *scan;

  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&tempdir_abspath,
                                         db, local_abspath,
                                         iterpool, iterpool));

  SVN_ERR(svn_stream_open_unique(&stream, &temp_abspath,
                                 tempdir_abspath, svn_io_file_del_none,
                                 scratch_pool, iterpool));

  if (prop_conflict_data)
    {
      for (scan = prop_conflict_data->children->next;
            scan != ((void*)0); scan = scan->next)
        {
          const svn_string_t *conflict_desc;

          svn_pool_clear(iterpool);

          SVN_ERR(prop_conflict_from_skel(&conflict_desc, scan,
                                          cancel_func, cancel_baton,
                                          iterpool, iterpool));

          SVN_ERR(svn_stream_puts(stream, conflict_desc->data));
        }
    }
  else
    {
      svn_wc_operation_t operation;
      apr_hash_index_t *hi;
      apr_hash_t *old_props;
      apr_hash_t *mine_props;
      apr_hash_t *their_original_props;
      apr_hash_t *their_props;
      apr_hash_t *conflicted_props;
      svn_skel_t *conflicts;

      SVN_ERR(svn_wc__db_read_conflict(&conflicts, ((void*)0), ((void*)0),
                                       db, local_abspath,
                                      scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__conflict_read_info(&operation, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         db, local_abspath,
                                         conflicts,
                                         scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__conflict_read_prop_conflict(((void*)0),
                                                  &mine_props,
                                                  &their_original_props,
                                                  &their_props,
                                                  &conflicted_props,
                                                  db, local_abspath,
                                                  conflicts,
                                                  scratch_pool,
                                                  scratch_pool));

      if (operation == svn_wc_operation_merge)
        SVN_ERR(svn_wc__db_read_pristine_props(&old_props, db, local_abspath,
                                                scratch_pool, scratch_pool));
      else
        old_props = their_original_props;


      for (hi = apr_hash_first(scratch_pool, conflicted_props);
           hi;
           hi = apr_hash_next(hi))
        {
          const svn_string_t *conflict_desc;
          const char *propname = apr_hash_this_key(hi);
          const svn_string_t *old_value;
          const svn_string_t *mine_value;
          const svn_string_t *their_value;
          const svn_string_t *their_original_value;

          svn_pool_clear(iterpool);

          old_value = old_props ? svn_hash_gets(old_props, propname) : ((void*)0);
          mine_value = mine_props ? svn_hash_gets(mine_props, propname) : ((void*)0);
          their_value = their_props ? svn_hash_gets(their_props, propname)
                                    : ((void*)0);
          their_original_value = their_original_props
                                    ? svn_hash_gets(their_original_props, propname)
                                    : ((void*)0);

          SVN_ERR(prop_conflict_new(&conflict_desc,
                                    propname, old_value, mine_value,
                                    their_value, their_original_value,
                                    cancel_func, cancel_baton,
                                    iterpool, iterpool));

          SVN_ERR(svn_stream_puts(stream, conflict_desc->data));
        }
    }

  SVN_ERR(svn_stream_close(stream));

  svn_pool_destroy(iterpool);

  *tmp_prejfile_abspath = apr_pstrdup(result_pool, temp_abspath);
  return SVN_NO_ERROR;
}
