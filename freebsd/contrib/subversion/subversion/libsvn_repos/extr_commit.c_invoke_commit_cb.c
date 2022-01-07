
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_8__ {char const* post_commit_err; int * author; int * date; int revision; } ;
typedef TYPE_2__ svn_commit_info_t ;
typedef int (* svn_commit_callback2_t ) (TYPE_2__*,void*,int *) ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 TYPE_2__* svn_create_commit_info (int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs_revision_proplist2 (int **,int *,int ,int ,int *,int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
invoke_commit_cb(svn_commit_callback2_t commit_cb,
                 void *commit_baton,
                 svn_fs_t *fs,
                 svn_revnum_t revision,
                 const char *post_commit_errstr,
                 apr_pool_t *scratch_pool)
{

              svn_string_t *date;
              svn_string_t *author;
  svn_commit_info_t *commit_info;
  apr_hash_t *revprops;

  if (commit_cb == ((void*)0))
    return SVN_NO_ERROR;

  SVN_ERR(svn_fs_revision_proplist2(&revprops, fs, revision,
                                    TRUE, scratch_pool, scratch_pool));

  date = svn_hash_gets(revprops, SVN_PROP_REVISION_DATE);
  author = svn_hash_gets(revprops, SVN_PROP_REVISION_AUTHOR);

  commit_info = svn_create_commit_info(scratch_pool);


  commit_info->revision = revision;
  commit_info->date = date ? date->data : ((void*)0);
  commit_info->author = author ? author->data : ((void*)0);
  commit_info->post_commit_err = post_commit_errstr;


  return svn_error_trace(commit_cb(commit_info, commit_baton, scratch_pool));
}
