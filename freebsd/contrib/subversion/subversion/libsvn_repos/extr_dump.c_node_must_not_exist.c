
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* path_tracker; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int revision; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_ALREADY_EXISTS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int fetch_kind_func (scalar_t__*,struct edit_baton*,char const*,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 scalar_t__ svn_node_none ;
 int tracker_lookup (char const**,int *,TYPE_1__*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
node_must_not_exist(struct edit_baton *eb,
                    const char *path,
                    svn_revnum_t revision,
                    apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind = svn_node_none;


  if (eb->path_tracker == ((void*)0))
    return SVN_NO_ERROR;



  if (revision == eb->path_tracker->revision)
    tracker_lookup(&path, &revision, eb->path_tracker, path, scratch_pool);


  if (path)
    SVN_ERR(fetch_kind_func(&kind, eb, path, revision, scratch_pool));


  if (kind != svn_node_none)
    return svn_error_createf(SVN_ERR_FS_ALREADY_EXISTS, ((void*)0),
                             _("Path '%s' exists in r%ld."),
                             path, revision);

  return SVN_NO_ERROR;
}
