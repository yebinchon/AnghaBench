
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int number; } ;
struct TYPE_15__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int (* svn_log_message_receiver_t ) (void*,int *,int ,char*,char*,int ,int *) ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_FS_NO_SUCH_REVISION ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_3__* svn_client_log2 (int const*,TYPE_2__ const*,TYPE_2__ const*,int ,int ,int ,int (*) (void*,int *,int ,char*,char*,int ,int *),void*,int *,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_number ;

svn_error_t *
svn_client_log(const apr_array_header_t *targets,
               const svn_opt_revision_t *start,
               const svn_opt_revision_t *end,
               svn_boolean_t discover_changed_paths,
               svn_boolean_t strict_node_history,
               svn_log_message_receiver_t receiver,
               void *receiver_baton,
               svn_client_ctx_t *ctx,
               apr_pool_t *pool)
{
  svn_error_t *err = SVN_NO_ERROR;

  err = svn_client_log2(targets, start, end, 0, discover_changed_paths,
                        strict_node_history, receiver, receiver_baton, ctx,
                        pool);
  if (err && (err->apr_err == SVN_ERR_FS_NO_SUCH_REVISION)
      && (start->kind == svn_opt_revision_head)
      && ((end->kind == svn_opt_revision_number)
          && (end->value.number == 1)))
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;



      SVN_ERR(receiver(receiver_baton,
                       ((void*)0), 0, "", "", _("No commits in repository"),
                       pool));
    }

  return svn_error_trace(err);
}
