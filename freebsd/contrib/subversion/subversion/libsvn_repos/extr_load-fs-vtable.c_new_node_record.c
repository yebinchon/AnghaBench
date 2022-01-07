
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int svn_error_t ;
struct revision_baton {scalar_t__ rev; int txn_root; scalar_t__ skipped; struct parse_baton* pb; } ;
struct parse_baton {int notify_pool; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int ) ;} ;
struct node_baton {int action; int path; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int SVN_ERR_STREAM_UNRECOGNIZED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int make_node_baton (struct node_baton**,int *,struct revision_baton*,int *) ;
 int maybe_add_with_history (struct node_baton*,struct revision_baton*,int *) ;
 int stub1 (int ,TYPE_1__*,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_delete (int ,int ,int *) ;




 int svn_pool_clear (int ) ;
 TYPE_1__* svn_repos_notify_create (int ,int ) ;
 int svn_repos_notify_load_node_start ;

__attribute__((used)) static svn_error_t *
new_node_record(void **node_baton,
                apr_hash_t *headers,
                void *revision_baton,
                apr_pool_t *pool)
{
  struct revision_baton *rb = revision_baton;
  struct parse_baton *pb = rb->pb;
  struct node_baton *nb;

  if (rb->rev == 0)
    return svn_error_create(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                            _("Malformed dumpstream: "
                              "Revision 0 must not contain node records"));

  SVN_ERR(make_node_baton(&nb, headers, rb, pool));


  if (rb->skipped)
    {
      *node_baton = nb;
      return SVN_NO_ERROR;
    }


  if (nb->action < 130
        || nb->action > 128)
      return svn_error_createf(SVN_ERR_STREAM_UNRECOGNIZED_DATA, ((void*)0),
                               _("Unrecognized node-action on node '%s'"),
                               nb->path);

  if (pb->notify_func)
    {

      svn_repos_notify_t *notify = svn_repos_notify_create(
                                        svn_repos_notify_load_node_start,
                                        pb->notify_pool);

      notify->path = nb->path;
      pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
      svn_pool_clear(pb->notify_pool);
    }

  switch (nb->action)
    {
    case 130:
      break;

    case 129:
      SVN_ERR(svn_fs_delete(rb->txn_root, nb->path, pool));
      break;

    case 131:
      SVN_ERR(maybe_add_with_history(nb, rb, pool));
      break;

    case 128:
      SVN_ERR(svn_fs_delete(rb->txn_root, nb->path, pool));
      SVN_ERR(maybe_add_with_history(nb, rb, pool));
      break;
    }

  *node_baton = nb;
  return SVN_NO_ERROR;
}
