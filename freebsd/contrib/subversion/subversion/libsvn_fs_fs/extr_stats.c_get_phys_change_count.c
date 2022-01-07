
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int eol; } ;
typedef TYPE_1__ svn_fs_fs__changes_context_t ;
typedef int svn_error_t ;
struct TYPE_11__ {scalar_t__ change_count; int revision; } ;
typedef TYPE_2__ revision_info_t ;
struct TYPE_12__ {int fs; } ;
typedef TYPE_3__ query_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {scalar_t__ nelts; } ;
typedef TYPE_4__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__create_changes_context (TYPE_1__**,int ,int ,int *) ;
 int svn_fs_fs__get_changes (TYPE_4__**,TYPE_1__*,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
get_phys_change_count(query_t *query,
                      revision_info_t *revision_info,
                      apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_fs_fs__changes_context_t *context;


  SVN_ERR(svn_fs_fs__create_changes_context(&context, query->fs,
                                            revision_info->revision,
                                            scratch_pool));

  revision_info->change_count = 0;
  while (!context->eol)
    {
      apr_array_header_t *changes;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_fs__get_changes(&changes, context, iterpool, iterpool));
      revision_info->change_count = changes->nelts;
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
