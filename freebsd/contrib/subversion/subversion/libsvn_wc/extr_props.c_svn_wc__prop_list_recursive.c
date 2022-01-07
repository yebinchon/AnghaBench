
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int (* svn_wc__proplist_receiver_t ) (void*,char const*,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct propname_filter_baton_t {char const* propname; void* receiver_baton; int (* receiver_func ) (void*,char const*,int *,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {int nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int (*) (void*,char const*,int *,int *)) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int apr_hash_count (int *) ;
 int propname_filter_receiver (void*,char const*,int *,int *) ;




 int svn_hash_from_cstring_keys (int **,TYPE_2__ const*,int *) ;
 int svn_wc__db_read_pristine_props (int **,int ,char const*,int *,int *) ;
 int svn_wc__db_read_props (int **,int ,char const*,int *,int *) ;
 int svn_wc__db_read_props_streamily (int ,char const*,int,int ,TYPE_2__ const*,int (*) (void*,char const*,int *,int *),void*,int ,void*,int *) ;
 int svn_wc__internal_changelist_match (int ,char const*,int *,int *) ;

svn_error_t *
svn_wc__prop_list_recursive(svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            const char *propname,
                            svn_depth_t depth,
                            svn_boolean_t pristine,
                            const apr_array_header_t *changelists,
                            svn_wc__proplist_receiver_t receiver_func,
                            void *receiver_baton,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *scratch_pool)
{
  svn_wc__proplist_receiver_t receiver = receiver_func;
  void *baton = receiver_baton;
  struct propname_filter_baton_t pfb;

  pfb.receiver_func = receiver_func;
  pfb.receiver_baton = receiver_baton;
  pfb.propname = propname;

  SVN_ERR_ASSERT(receiver_func);

  if (propname)
    {
      baton = &pfb;
      receiver = propname_filter_receiver;
    }

  switch (depth)
    {
    case 131:
      {
        apr_hash_t *props;
        apr_hash_t *changelist_hash = ((void*)0);

        if (changelists && changelists->nelts)
          SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash,
                                             changelists, scratch_pool));

        if (!svn_wc__internal_changelist_match(wc_ctx->db, local_abspath,
                                               changelist_hash, scratch_pool))
          break;

        if (pristine)
          SVN_ERR(svn_wc__db_read_pristine_props(&props, wc_ctx->db,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));
        else
          SVN_ERR(svn_wc__db_read_props(&props, wc_ctx->db, local_abspath,
                                        scratch_pool, scratch_pool));

        if (props && apr_hash_count(props) > 0)
          SVN_ERR(receiver(baton, local_abspath, props, scratch_pool));
      }
      break;
    case 130:
    case 129:
    case 128:
      {
        SVN_ERR(svn_wc__db_read_props_streamily(wc_ctx->db, local_abspath,
                                                depth, pristine,
                                                changelists, receiver, baton,
                                                cancel_func, cancel_baton,
                                                scratch_pool));
      }
      break;
    default:
      SVN_ERR_MALFUNCTION();
    }

  return SVN_NO_ERROR;
}
