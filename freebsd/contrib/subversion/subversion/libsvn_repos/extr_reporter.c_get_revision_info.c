
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int rev; void* author; void* date; } ;
typedef TYPE_2__ revision_info_t ;
typedef int rev ;
struct TYPE_11__ {int revision_infos; int pool; TYPE_1__* repos; } ;
typedef TYPE_3__ report_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_9__ {int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 TYPE_2__* apr_hash_get (int ,int *,int) ;
 int apr_hash_set (int ,int *,int,TYPE_2__*) ;
 TYPE_2__* apr_palloc (int ,int) ;
 int svn_fs_revision_proplist2 (int **,int ,int ,int ,int *,int *) ;
 int * svn_hash_gets (int *,int ) ;
 void* svn_string_dup (int *,int ) ;

__attribute__((used)) static svn_error_t *
get_revision_info(report_baton_t *b,
                  svn_revnum_t rev,
                  revision_info_t** revision_info,
                  apr_pool_t *scratch_pool)
{
  apr_hash_t *r_props;
  svn_string_t *cdate, *author;
  revision_info_t* info;


  info = apr_hash_get(b->revision_infos, &rev, sizeof(rev));
  if (!info)
    {


      SVN_ERR(svn_fs_revision_proplist2(&r_props,
                                        b->repos->fs,
                                        rev,
                                        FALSE,
                                        scratch_pool,
                                        scratch_pool));


      cdate = svn_hash_gets(r_props, SVN_PROP_REVISION_DATE);


      author = svn_hash_gets(r_props, SVN_PROP_REVISION_AUTHOR);


      info = apr_palloc(b->pool, sizeof(*info));
      info->rev = rev;
      info->date = svn_string_dup(cdate, b->pool);
      info->author = svn_string_dup(author, b->pool);


      apr_hash_set(b->revision_infos, &info->rev, sizeof(info->rev), info);
    }

  *revision_info = info;
  return SVN_NO_ERROR;
}
