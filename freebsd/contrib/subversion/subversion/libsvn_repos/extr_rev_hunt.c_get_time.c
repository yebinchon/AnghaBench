
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_GENERAL ;
 int SVN_PROP_REVISION_DATE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_revision_prop2 (TYPE_1__**,int *,int ,int ,int ,int *,int *) ;
 int * svn_time_from_cstring (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_time(apr_time_t *tm,
         svn_fs_t *fs,
         svn_revnum_t rev,
         apr_pool_t *pool)
{
  svn_string_t *date_str;

  SVN_ERR(svn_fs_revision_prop2(&date_str, fs, rev, SVN_PROP_REVISION_DATE,
                                FALSE, pool, pool));
  if (! date_str)
    return svn_error_createf
      (SVN_ERR_FS_GENERAL, ((void*)0),
       _("Failed to find time on revision %ld"), rev);

  return svn_time_from_cstring(tm, date_str->data, pool);
}
