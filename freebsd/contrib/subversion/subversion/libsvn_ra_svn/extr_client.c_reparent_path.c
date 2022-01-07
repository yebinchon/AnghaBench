
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* parent; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {TYPE_1__* path; } ;
typedef TYPE_3__ svn_ra_svn__parent_t ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef TYPE_4__ svn_ra_session_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int data; } ;


 char const* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static const char *
reparent_path(svn_ra_session_t *ra_session,
              const char *path,
              apr_pool_t *result_pool)
{
  svn_ra_svn__session_baton_t *sess = ra_session->priv;
  svn_ra_svn__parent_t *parent = sess->parent;

  return svn_relpath_join(parent->path->data, path, result_pool);
}
