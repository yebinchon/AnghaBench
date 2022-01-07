
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_8__ {int id; } ;
typedef TYPE_2__ svn_fs_x__dirent_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int hint; int fs; TYPE_1__* node_revision; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int svn_fs_x__id_reset (int *) ;
 int svn_fs_x__rep_contents_dir_entry (TYPE_2__**,int ,TYPE_1__*,char const*,int *,int *,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_path_is_single_path_component (char const*) ;

svn_error_t *
svn_fs_x__dir_entry_id(svn_fs_x__id_t *id_p,
                       dag_node_t *parent,
                       const char *name,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__dirent_t *dirent;
  svn_fs_x__noderev_t *noderev = parent->node_revision;

  if (noderev->kind != svn_node_dir)
    return svn_error_create(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                            _("Can't get entries of non-directory"));


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       "Attempted to open node with an illegal name '%s'", name);


  SVN_ERR(svn_fs_x__rep_contents_dir_entry(&dirent, parent->fs, noderev,
                                           name, &parent->hint,
                                           scratch_pool, scratch_pool));
  if (dirent)
    *id_p = dirent->id;
  else
    svn_fs_x__id_reset(id_p);

  return SVN_NO_ERROR;
}
