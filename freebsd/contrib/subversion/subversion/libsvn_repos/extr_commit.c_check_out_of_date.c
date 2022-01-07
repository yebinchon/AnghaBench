
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {int txn; } ;


 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * out_of_date (char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 scalar_t__ svn_fs_txn_base_revision (int ) ;

__attribute__((used)) static svn_error_t *
check_out_of_date(struct edit_baton *eb,
                  const char *path,
                  svn_node_kind_t kind,
                  svn_revnum_t base_rev,
                  svn_revnum_t created_rev)
{
  if (base_rev < created_rev)
    {
      return out_of_date(path, kind);
    }
  else if (base_rev > created_rev)
    {
      if (base_rev > svn_fs_txn_base_revision(eb->txn))
        return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                                 _("No such revision %ld"),
                                 base_rev);
    }

  return SVN_NO_ERROR;
}
