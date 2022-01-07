
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct history_prev_args {int * pool; int cross_copies; TYPE_1__* history; TYPE_1__** prev_history_p; } ;
struct TYPE_7__ {scalar_t__ revision; scalar_t__ is_interesting; int path; int * fs; } ;
typedef TYPE_2__ base_history_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 TYPE_1__* assemble_history (int *,char*,scalar_t__,int,int *,int ,int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int svn_fs_base__retry_txn (int *,int ,struct history_prev_args*,int ,int *) ;
 int txn_body_history_prev ;

__attribute__((used)) static svn_error_t *
base_history_prev(svn_fs_history_t **prev_history_p,
                  svn_fs_history_t *history,
                  svn_boolean_t cross_copies,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_fs_history_t *prev_history = ((void*)0);
  base_history_data_t *bhd = history->fsap_data;
  svn_fs_t *fs = bhd->fs;





  if (strcmp(bhd->path, "/") == 0)
    {
      if (! bhd->is_interesting)
        prev_history = assemble_history(fs, "/", bhd->revision,
                                        1, ((void*)0), SVN_INVALID_REVNUM,
                                        result_pool);
      else if (bhd->revision > 0)
        prev_history = assemble_history(fs, "/", bhd->revision - 1,
                                        1, ((void*)0), SVN_INVALID_REVNUM,
                                        result_pool);
    }
  else
    {
      struct history_prev_args args;
      prev_history = history;

      while (1)
        {


          args.prev_history_p = &prev_history;
          args.history = prev_history;
          args.cross_copies = cross_copies;
          args.pool = result_pool;
          SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_history_prev, &args,
                                         FALSE, result_pool));
          if (! prev_history)
            break;
          bhd = prev_history->fsap_data;
          if (bhd->is_interesting)
            break;
        }
    }

  *prev_history_p = prev_history;
  return SVN_NO_ERROR;
}
