
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc__db_t ;
struct TYPE_4__ {int wcroot; } ;
typedef TYPE_1__ svn_wc__db_commit_queue_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int ) ;
 int db_process_commit_queue (int *,TYPE_1__*,int ,int ,char const*,int *) ;

svn_error_t *
svn_wc__db_process_commit_queue(svn_wc__db_t *db,
                                svn_wc__db_commit_queue_t *queue,
                                svn_revnum_t new_revnum,
                                apr_time_t new_date,
                                const char *new_author,
                                apr_pool_t *scratch_pool)
{
  SVN_WC__DB_WITH_TXN(db_process_commit_queue(db, queue,
                                              new_revnum, new_date,
                                              new_author, scratch_pool),
                        queue->wcroot);

  return SVN_NO_ERROR;
}
