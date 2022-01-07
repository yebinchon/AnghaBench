
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_version_t ;
struct TYPE_23__ {int choice; void* merged_file; TYPE_5__* merged_value; } ;
typedef TYPE_1__ svn_wc_conflict_result_t ;
typedef int (* svn_wc_conflict_resolver_func2_t ) (TYPE_1__**,TYPE_3__*,void*,int *,int *) ;
struct TYPE_24__ {void* merged_file; int reason; int action; int prop_reject_abspath; int their_abspath; TYPE_5__ const* prop_value_incoming_old; TYPE_5__ const* prop_value_base; void* base_abspath; TYPE_5__ const* prop_value_incoming_new; TYPE_5__ const* prop_value_working; void* my_abspath; int const* src_right_version; int const* src_left_version; int operation; } ;
typedef TYPE_3__ svn_wc_conflict_description2_t ;
typedef int svn_wc__db_t ;
typedef int svn_stringbuf_t ;
struct TYPE_25__ {int len; int data; } ;
typedef TYPE_5__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_file_options_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_diff_conflict_display_modified_latest ;
 int * svn_diff_file_options_create (int *) ;
 int svn_diff_mem_string_diff3 (int **,TYPE_5__ const*,TYPE_5__ const*,TYPE_5__ const*,int *,int *) ;
 int svn_diff_mem_string_output_merge3 (int *,int *,TYPE_5__ const*,TYPE_5__ const*,TYPE_5__ const*,int *,int *,int *,int *,int ,int ,void*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 void* svn_dirent_join (char const*,char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_hash_sets (int *,char const*,TYPE_5__ const*) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_write_unique (char const**,char const*,int ,int ,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,int *,int *,int ,int *,int *) ;
 scalar_t__ svn_string_compare (TYPE_5__ const*,TYPE_5__ const*) ;
 TYPE_5__* svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_from_file2 (int **,void*,int *) ;
 int svn_wc__db_op_set_props (int *,char const*,int *,int ,int *,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;
 int svn_wc_conflict_action_add ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_action_edit ;





 TYPE_3__* svn_wc_conflict_description_create_prop2 (char const*,int ,char const*,int *) ;
 int svn_wc_conflict_reason_deleted ;
 int svn_wc_conflict_reason_edited ;
 int svn_wc_conflict_reason_obstructed ;

__attribute__((used)) static svn_error_t *
generate_propconflict(svn_boolean_t *conflict_remains,
                      svn_wc__db_t *db,
                      const char *local_abspath,
                      svn_node_kind_t kind,
                      svn_wc_operation_t operation,
                      const svn_wc_conflict_version_t *left_version,
                      const svn_wc_conflict_version_t *right_version,
                      const char *propname,
                      const svn_string_t *base_val,
                      const svn_string_t *working_val,
                      const svn_string_t *incoming_old_val,
                      const svn_string_t *incoming_new_val,
                      svn_wc_conflict_resolver_func2_t conflict_func,
                      void *conflict_baton,
                      svn_cancel_func_t cancel_func,
                      void *cancel_baton,
                      apr_pool_t *scratch_pool)
{
  svn_wc_conflict_result_t *result = ((void*)0);
  svn_wc_conflict_description2_t *cdesc;
  const char *dirpath = svn_dirent_dirname(local_abspath, scratch_pool);
  const svn_string_t *new_value = ((void*)0);

  cdesc = svn_wc_conflict_description_create_prop2(
                local_abspath,
                kind,
                propname, scratch_pool);

  cdesc->operation = operation;
  cdesc->src_left_version = left_version;
  cdesc->src_right_version = right_version;


  if (working_val)
    {
      const char *file_name;

      SVN_ERR(svn_io_write_unique(&file_name, dirpath, working_val->data,
                                  working_val->len,
                                  svn_io_file_del_on_pool_cleanup,
                                  scratch_pool));
      cdesc->my_abspath = svn_dirent_join(dirpath, file_name, scratch_pool);
      cdesc->prop_value_working = working_val;
    }

  if (incoming_new_val)
    {
      const char *file_name;

      SVN_ERR(svn_io_write_unique(&file_name, dirpath, incoming_new_val->data,
                                  incoming_new_val->len,
                                  svn_io_file_del_on_pool_cleanup,
                                  scratch_pool));



      cdesc->merged_file = svn_dirent_join(dirpath, file_name, scratch_pool);
      cdesc->prop_value_incoming_new = incoming_new_val;
    }

  if (!base_val && !incoming_old_val)
    {



    }
  else if ((base_val && !incoming_old_val)
           || (!base_val && incoming_old_val))
    {







      const svn_string_t *conflict_base_val = base_val ? base_val
                                                       : incoming_old_val;
      const char *file_name;

      SVN_ERR(svn_io_write_unique(&file_name, dirpath,
                                  conflict_base_val->data,
                                  conflict_base_val->len,
                                  svn_io_file_del_on_pool_cleanup,
                                  scratch_pool));
      cdesc->base_abspath = svn_dirent_join(dirpath, file_name, scratch_pool);
    }
  else
    {
      const svn_string_t *conflict_base_val;
      const char *file_name;

      if (! svn_string_compare(base_val, incoming_old_val))
        {
          if (working_val && svn_string_compare(base_val, working_val))
            conflict_base_val = incoming_old_val;
          else
            conflict_base_val = base_val;
        }
      else
        {
          conflict_base_val = base_val;
        }

      SVN_ERR(svn_io_write_unique(&file_name, dirpath, conflict_base_val->data,
                                  conflict_base_val->len,
                                  svn_io_file_del_on_pool_cleanup, scratch_pool));
      cdesc->base_abspath = svn_dirent_join(dirpath, file_name, scratch_pool);

      cdesc->prop_value_base = base_val;
      cdesc->prop_value_incoming_old = incoming_old_val;

      if (working_val && incoming_new_val)
        {
          svn_stream_t *mergestream;
          svn_diff_t *diff;
          svn_diff_file_options_t *options =
            svn_diff_file_options_create(scratch_pool);

          SVN_ERR(svn_stream_open_unique(&mergestream, &cdesc->prop_reject_abspath,
                                         ((void*)0), svn_io_file_del_on_pool_cleanup,
                                         scratch_pool, scratch_pool));
          SVN_ERR(svn_diff_mem_string_diff3(&diff, conflict_base_val,
                                            working_val,
                                            incoming_new_val, options, scratch_pool));
          SVN_ERR(svn_diff_mem_string_output_merge3(mergestream, diff,
                   conflict_base_val, working_val,
                   incoming_new_val, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                   svn_diff_conflict_display_modified_latest,
                   cancel_func, cancel_baton, scratch_pool));
          SVN_ERR(svn_stream_close(mergestream));



          cdesc->their_abspath = cdesc->prop_reject_abspath;
        }
    }

  if (!incoming_old_val && incoming_new_val)
    cdesc->action = svn_wc_conflict_action_add;
  else if (incoming_old_val && !incoming_new_val)
    cdesc->action = svn_wc_conflict_action_delete;
  else
    cdesc->action = svn_wc_conflict_action_edit;

  if (base_val && !working_val)
    cdesc->reason = svn_wc_conflict_reason_deleted;
  else if (!base_val && working_val)
    cdesc->reason = svn_wc_conflict_reason_obstructed;
  else
    cdesc->reason = svn_wc_conflict_reason_edited;


  SVN_ERR(conflict_func(&result, cdesc, conflict_baton, scratch_pool,
                        scratch_pool));
  if (result == ((void*)0))
    {
      *conflict_remains = TRUE;
      return svn_error_create(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                              ((void*)0), _("Conflict callback violated API:"
                                      " returned no results"));
    }


  switch (result->choice)
    {
      default:
      case 129:
        {
          *conflict_remains = TRUE;
          break;
        }
      case 130:
        {

          *conflict_remains = FALSE;
          new_value = working_val;
          break;
        }





      case 128:
        {
          *conflict_remains = FALSE;
          new_value = incoming_new_val;
          break;
        }
      case 132:
        {
          *conflict_remains = FALSE;
          new_value = base_val;
          break;
        }
      case 131:
        {
          if (!cdesc->merged_file
              && (!result->merged_file && !result->merged_value))
            return svn_error_create
                (SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                 ((void*)0), _("Conflict callback violated API:"
                         " returned no merged file"));

          if (result->merged_value)
            new_value = result->merged_value;
          else
            {
              svn_stringbuf_t *merged_stringbuf;

              SVN_ERR(svn_stringbuf_from_file2(&merged_stringbuf,
                                               result->merged_file ?
                                                    result->merged_file :
                                                    cdesc->merged_file,
                                               scratch_pool));
              new_value = svn_stringbuf__morph_into_string(merged_stringbuf);
            }
          *conflict_remains = FALSE;
          break;
        }
    }

  if (!*conflict_remains)
    {
      apr_hash_t *props;




      SVN_ERR(svn_wc__db_read_props(&props, db, local_abspath, scratch_pool,
                                    scratch_pool));

      svn_hash_sets(props, propname, new_value);

      SVN_ERR(svn_wc__db_op_set_props(db, local_abspath, props,
                                      FALSE, ((void*)0), ((void*)0),
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}
