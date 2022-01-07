
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mime_type; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
struct TYPE_9__ {int db; } ;
typedef TYPE_3__ svn_wc_context_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int add_from_disk (int ,char const*,int ,int const*,int *) ;
 int check_can_add_node (int *,int *,int *,int ,char const*,int *,int ,int *) ;
 int check_can_add_to_parent (int *,int *,int ,char const*,int *,int *) ;
 int stub1 (void*,TYPE_1__*,int *) ;
 int svn_prop_get_value (int const*,int ) ;
 int svn_wc__canonicalize_props (int **,char const*,int ,int const*,int ,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_add ;

svn_error_t *
svn_wc_add_from_disk3(svn_wc_context_t *wc_ctx,
                      const char *local_abspath,
                      const apr_hash_t *props,
                      svn_boolean_t skip_checks,
                      svn_wc_notify_func2_t notify_func,
                      void *notify_baton,
                      apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;

  SVN_ERR(check_can_add_node(&kind, ((void*)0), ((void*)0), wc_ctx->db, local_abspath,
                             ((void*)0), SVN_INVALID_REVNUM, scratch_pool));
  SVN_ERR(check_can_add_to_parent(((void*)0), ((void*)0), wc_ctx->db, local_abspath,
                                  scratch_pool, scratch_pool));


  if (props)
    {
      apr_hash_t *new_props;

      SVN_ERR(svn_wc__canonicalize_props(
                &new_props,
                local_abspath, kind, props, skip_checks,
                scratch_pool, scratch_pool));
      props = new_props;
    }


  SVN_ERR(add_from_disk(wc_ctx->db, local_abspath, kind, props,
                        scratch_pool));


  if (notify_func != ((void*)0))
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(local_abspath,
                                                     svn_wc_notify_add,
                                                     scratch_pool);
      notify->kind = kind;
      notify->mime_type = svn_prop_get_value(props, SVN_PROP_MIME_TYPE);
      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
