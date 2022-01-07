
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ used; int * record_map; int * result_pool; int member_0; } ;
typedef TYPE_1__ work_item_baton_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {char* data; } ;


 scalar_t__ FALSE ;
 int SVN_DBG (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CANCELLED ;
 int SVN_ERR_WC_BAD_ADM_LOG ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int * dispatch_work_item (TYPE_1__*,int *,char const*,int *,int (*) (void*),void*,int *) ;
 char* getenv (char*) ;
 int svn_cstring_atoi (int*,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,char*) ;
 int * svn_error_createf (int ,int *,int ,int ,int,char const*) ;
 int svn_pool_clear (int *) ;
 void* svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_2__* svn_skel__unparse (int *,int *) ;
 int svn_wc__db_wq_fetch_next (scalar_t__*,int **,int *,char const*,scalar_t__,int *,int *) ;
 int svn_wc__db_wq_record_and_fetch_next (scalar_t__*,int **,int *,char const*,scalar_t__,int *,int *,int *) ;

svn_error_t *
svn_wc__wq_run(svn_wc__db_t *db,
               const char *wri_abspath,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_uint64_t last_id = 0;
  work_item_baton_t wib = { 0 };
  wib.result_pool = svn_pool_create(scratch_pool);
  while (TRUE)
    {
      apr_uint64_t id;
      svn_skel_t *work_item;
      svn_error_t *err;

      svn_pool_clear(iterpool);

      if (! wib.used)
        {



          SVN_ERR(svn_wc__db_wq_fetch_next(&id, &work_item, db, wri_abspath,
                                           last_id, iterpool, iterpool));
        }
      else
        {



          SVN_ERR(svn_wc__db_wq_record_and_fetch_next(&id, &work_item,
                                                      db, wri_abspath,
                                                      last_id, wib.record_map,
                                                      iterpool,
                                                      wib.result_pool));

          svn_pool_clear(wib.result_pool);
          wib.record_map = ((void*)0);
          wib.used = FALSE;
        }




      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));



      if (work_item == ((void*)0))
        break;

      err = dispatch_work_item(&wib, db, wri_abspath, work_item,
                               cancel_func, cancel_baton, iterpool);
      if (err)
        {
          const char *skel = svn_skel__unparse(work_item, scratch_pool)->data;

          return svn_error_createf(SVN_ERR_WC_BAD_ADM_LOG, err,
                                   _("Failed to run the WC DB work queue "
                                     "associated with '%s', work item %d %s"),
                                   svn_dirent_local_style(wri_abspath,
                                                          scratch_pool),
                                   (int)id, skel);
        }



      last_id = id;
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
