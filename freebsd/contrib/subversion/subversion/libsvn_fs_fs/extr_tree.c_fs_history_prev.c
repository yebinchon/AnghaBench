
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {scalar_t__ revision; scalar_t__ is_interesting; int path; int * fs; } ;
typedef TYPE_2__ fs_history_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 TYPE_1__* assemble_history (int *,char*,scalar_t__,int,int *,int ,int ,int *,int *) ;
 int history_prev (TYPE_1__**,TYPE_1__*,int ,int *,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
fs_history_prev(svn_fs_history_t **prev_history_p,
                svn_fs_history_t *history,
                svn_boolean_t cross_copies,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  svn_fs_history_t *prev_history = ((void*)0);
  fs_history_data_t *fhd = history->fsap_data;
  svn_fs_t *fs = fhd->fs;





  if (strcmp(fhd->path, "/") == 0)
    {
      if (! fhd->is_interesting)
        prev_history = assemble_history(fs, "/", fhd->revision,
                                        1, ((void*)0), SVN_INVALID_REVNUM,
                                        SVN_INVALID_REVNUM, ((void*)0),
                                        result_pool);
      else if (fhd->revision > 0)
        prev_history = assemble_history(fs, "/", fhd->revision - 1,
                                        1, ((void*)0), SVN_INVALID_REVNUM,
                                        SVN_INVALID_REVNUM, ((void*)0),
                                        result_pool);
    }
  else
    {
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);
      prev_history = history;

      while (1)
        {
          svn_pool_clear(iterpool);
          SVN_ERR(history_prev(&prev_history, prev_history, cross_copies,
                               result_pool, iterpool));

          if (! prev_history)
            break;
          fhd = prev_history->fsap_data;
          if (fhd->is_interesting)
            break;
        }

      svn_pool_destroy(iterpool);
    }

  *prev_history_p = prev_history;
  return SVN_NO_ERROR;
}
