
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_TXN_OUT_OF_DATE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_error_t *
out_of_date(const char *path, svn_node_kind_t kind)
{
  return svn_error_createf(SVN_ERR_FS_TXN_OUT_OF_DATE, ((void*)0),
                           (kind == svn_node_dir
                            ? _("Directory '%s' is out of date")
                            : kind == svn_node_file
                            ? _("File '%s' is out of date")
                            : _("'%s' is out of date")),
                           path);
}
