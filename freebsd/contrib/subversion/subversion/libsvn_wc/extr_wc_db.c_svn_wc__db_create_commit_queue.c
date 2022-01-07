
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
struct TYPE_8__ {int have_recurse; int items; TYPE_1__* wcroot; } ;
typedef TYPE_2__ svn_wc__db_commit_queue_t ;
typedef int svn_error_t ;
typedef int commit_queue_item_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int apr_array_make (int *,int,int) ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_create_commit_queue(svn_wc__db_commit_queue_t **queue,
                               svn_wc__db_t *db,
                               const char *wri_abspath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_wc__db_commit_queue_t *q;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(wri_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              wri_abspath, result_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  q = apr_pcalloc(result_pool, sizeof(*q));

  SVN_ERR_ASSERT(wcroot->sdb);

  q->wcroot = wcroot;
  q->items = apr_array_make(result_pool, 64,
                            sizeof(commit_queue_item_t*));
  q->have_recurse = FALSE;

  *queue = q;
  return SVN_NO_ERROR;
}
