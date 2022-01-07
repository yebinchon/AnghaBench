
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int number; int change_set; } ;
struct TYPE_14__ {int expanded_size; TYPE_1__ id; } ;
typedef TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_15__ {int revision; int second; int member_0; } ;
typedef TYPE_3__ svn_fs_x__pair_cache_key_t ;
struct TYPE_16__ {TYPE_2__* data_rep; } ;
typedef TYPE_4__ svn_fs_x__noderev_t ;
struct TYPE_17__ {int fulltext_cache; } ;
typedef TYPE_5__ svn_fs_x__data_t ;
struct TYPE_18__ {TYPE_5__* fsap_data; } ;
typedef TYPE_6__ svn_fs_t ;
typedef int svn_fs_process_contents_func_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_19__ {void* baton; int func; } ;
typedef TYPE_7__ cache_access_wrapper_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int cache_access_wrapper ;
 scalar_t__ fulltext_size_is_cachable (TYPE_5__*,int ) ;
 int * svn_cache__get_partial (void**,int *,int ,TYPE_3__*,int ,TYPE_7__*,int *) ;
 int svn_fs_x__get_revnum (int ) ;

svn_error_t *
svn_fs_x__try_process_file_contents(svn_boolean_t *success,
                                    svn_fs_t *fs,
                                    svn_fs_x__noderev_t *noderev,
                                    svn_fs_process_contents_func_t processor,
                                    void* baton,
                                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_t *rep = noderev->data_rep;
  if (rep)
    {
      svn_fs_x__data_t *ffd = fs->fsap_data;
      svn_fs_x__pair_cache_key_t fulltext_cache_key = { 0 };

      fulltext_cache_key.revision = svn_fs_x__get_revnum(rep->id.change_set);
      fulltext_cache_key.second = rep->id.number;
      if ( SVN_IS_VALID_REVNUM(fulltext_cache_key.revision)
          && fulltext_size_is_cachable(ffd, rep->expanded_size))
        {
          cache_access_wrapper_baton_t wrapper_baton;
          void *dummy = ((void*)0);

          wrapper_baton.func = processor;
          wrapper_baton.baton = baton;
          return svn_cache__get_partial(&dummy, success,
                                        ffd->fulltext_cache,
                                        &fulltext_cache_key,
                                        cache_access_wrapper,
                                        &wrapper_baton,
                                        scratch_pool);
        }
    }

  *success = FALSE;
  return SVN_NO_ERROR;
}
