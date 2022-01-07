
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_CONFLICT ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_stringbuf_set (int *,char const*) ;

__attribute__((used)) static svn_error_t *
conflict_err(svn_stringbuf_t *conflict_path,
             const char *path)
{
  svn_stringbuf_set(conflict_path, path);
  return svn_error_createf(SVN_ERR_FS_CONFLICT, ((void*)0),
                           _("Conflict at '%s'"), path);
}
