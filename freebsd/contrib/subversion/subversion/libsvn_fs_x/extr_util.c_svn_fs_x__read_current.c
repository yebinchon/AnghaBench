
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__path_current (int *,int *) ;
 int svn_fs_x__read_content (TYPE_1__**,int ,int *) ;
 int svn_revnum_parse (int *,int ,char const**) ;

svn_error_t *
svn_fs_x__read_current(svn_revnum_t *rev,
                       svn_fs_t *fs,
                       apr_pool_t *scratch_pool)
{
  const char *str;
  svn_stringbuf_t *content;
  SVN_ERR(svn_fs_x__read_content(&content,
                                 svn_fs_x__path_current(fs, scratch_pool),
                                 scratch_pool));
  SVN_ERR(svn_revnum_parse(rev, content->data, &str));
  if (*str != '\n')
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Corrupt 'current' file"));

  return SVN_NO_ERROR;
}
